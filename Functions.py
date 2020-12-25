M=[
[2,4,2,4,2],
[1,2,1,2,3],
[3,1,4,4,4],
[3,2,3,1,2],
[1,2,2,2,3]]
"""
3,1
4,1  4,2  4,3
"""

def checkRight(mat,r,c):
    try:
        if mat[r,c] == mat[r,c+1]:
            return True
        else:
            return False
    except:
        return None

def checkDown(mat,r,c):
    try:
        if mat[r,c] == mat[r+1,c]:
            return True
        else:
            return False
    except:
        return None


def findGroup(mat,pos):

    return groups

print(findGroup(M))
