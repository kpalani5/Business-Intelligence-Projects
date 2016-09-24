				#**************************************************************************************
				#				MUSIC RECOMMENDATION USING DOCUMENT FREQUENCY
				#**************************************************************************************

# To run code, make sure the three data files are present in the same folder, and run using python command in terminal.

import numpy as np
import math
import sys

# Function to load data from files
# Returns : Train, Test and Validation Data 

def loadData(trainFile,testFile,validFile):
    train = np.load(trainFile)
    test = np.load(testFile)
    validation = np.load(validFile)
    return train,test,validation

# Function to create (user,song,playcount) matrix and dictionaries mapping users and songs to their indices
# Returns : Matrix, Users Dictionary, Songs Dictionary

def createMatrix(data):
    r = len(set(list(data[:,0])))
    c = len(set(list(data[:,1])))
    users = {}
    songs = {}
    matrix = np.zeros((r,c))
    uct = 0
    sct = 0
    for row in data:
        if str(row[0]) not in users.keys():
            users[str(row[0])] = uct
            uct = uct + 1        
        if str(row[1]) not in songs.keys():
            songs[str(row[1])] = sct
            sct = sct + 1
        matrix[int(users[str(row[0])]),int(songs[str(row[1])])] = int(row[2])  
    return matrix,users,songs

# Function to find inverse document frequency (IDF) of all songs
# Returns : IDF values as Array

def findIDF(matrix,users,songs):
    idfList = np.zeros(len(songs.keys()))
    for i in range(0,len(idfList)):
        idfList[i] = math.log(float(len(users.keys()))/np.count_nonzero(matrix[:,i]))
    return idfList

# Function to find similarity values for user 'U' w.r.t all other users
# Returns : Similarity values as Matrix

def findSimilarities(matrix,users,songs,idfList):
    similarList = np.zeros((len(users.keys()),len(users.keys())))
    for i in range(0,len(users.keys())):
        for k in range(i+1,len(users.keys())):
            for j in range(0,len(songs.keys())):
                if(matrix[i,j] > 0 and matrix[k,j] > 0):
                    similarList[i,k] = similarList[i,k] + idfList[j]
            similarList[k,i] = similarList[i,k]
    return similarList	

# Function to compute score of a user for a song
# Returns : Score of a song to be recommended for a user as an integer

def scoringFunction(matrix,idf,similarList,s_value,S,ct,limit):
    h = 0
    for i in range(0,ct):
        if similarList[i] > limit and matrix[i,S] > 0:
            h = h + float(idf)/sum(matrix[i,:])     
    return h

# Function to compute top-n recommendations for all users
# Returns : Top-n recommendations as a list of song IDs

def giveRecommendations(train,test,s_value,n):
    matrix,users,songs = createMatrix(train)
    testMat,testUsers,testSongs = createMatrix(test)  
    idfList = findIDF(matrix,users,songs)
    similarList = findSimilarities(matrix,users,songs,idfList)
    uct = -1
    recommendations = []
    for user in testUsers.keys():
        uct = uct + 1
        U = int(users[str(user)])
        print uct
        limit = max(similarList[U,:])*s_value
        scores = np.zeros(len(songs.keys()))
        ct = 0
        for s in songs.keys():
            #print ct
            S = songs[str(s)]
            if matrix[U,int(S)] == 0:
                scores[int(S)] = scoringFunction(matrix,idfList[S],similarList[U,:],s_value,S,len(users.keys()),limit)
                ct = ct + 1
        if n < ct:
            ct = n
        indices = np.flipud(np.argsort(scores))
        recommendations.append([])
        for i in range(0,int(ct)):
            recommendations[uct].append(str(songs.keys()[songs.values().index(indices[i])]))      
    return recommendations

# Function to find actual playlist of user in test/validation sets
# Returns : Top-n Actual songs played by user in set as list

def getActual(test,user,n):
    test = test[test[:,0] == user]
    test = test[test[:,2].argsort()[::-1]]
    return test[0:n,1]
	    
# Function to check number of correct recommendations for each user in set
# Returns : Average of number of Correct Recommendations/n ratio 

def checkRecommendations(train,test,s_value,n):
    users = set(list(test[:,0]))
    ct = 0
    recommended = giveRecommendations(train,test,s_value,n)
    print recommended
    f = open('reco2.txt','w')
    for r in recommended:
        for s in r:
            f.write(s)
            f.write("\t")
        f.write("\n")
    M,U,S = createMatrix(train)
    for u in users:
        user = int(U[str(u)])
        actual = getActual(test,u,n)
        print set(actual)
        ct = ct + len(set(actual).intersection(recommended[user]))
    return float(ct)/(len(users)*n)   


def main():
    train,test,validation = loadData("MusicTrain.dat","MusicTest.dat","MusicValidation.dat")
    print giveRecommendations(train,test,0.5,65)
      
main()
