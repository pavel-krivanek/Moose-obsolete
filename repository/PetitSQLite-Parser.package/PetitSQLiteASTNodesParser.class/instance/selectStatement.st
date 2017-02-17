initialization
selectStatement 
	^super selectStatement ==> [:token | token first first]