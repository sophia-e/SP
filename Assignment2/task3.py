import sys 

def findMatrix(mat1,mat2):
	mat1 = [int(i) for i in mat1] # converting lst of str to int
	count=0
	for row in range(7):
		for col in range(7):
			if mat1[count] is mat2[row][col] and mat1[count+1] is mat2[row][col+1] and mat1[count+2] is mat2[row+1][col] and mat1[count+3] is mat2[row+1][col+1]:
				print "Matrix found at (%d,%d)" %(row,col)
				return; 
			col=col+1
		row=row+1
	print "Matrix not found"
	return;
	
print("main")
matrix = [[1,2,3,4,5,6,7,8],
	 [9,10,11,12,13,14,15,16],
	 [17,18,19,20,21,22,23,24],
	 [25,26,17,28,29,30,31,32],
	 [33,34,35,36,37,38,39,40],
	 [41,42,43,44,45,46,47,48],
	 [49,50,51,52,53,54,55,56],
	 [57,58,59,60,61,62,63,64]]

if len(sys.argv[1:]) == 4 :	
	findMatrix(sys.argv[1:],matrix)
else :
	print ("you did not enter a 2X2 matrix")
