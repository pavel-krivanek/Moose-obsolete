accessing
nextNode: aNode 
	"set the next node of the receiver to be aNode" 
	 
	nextNode := aNode. 
	self changed: #nextNode