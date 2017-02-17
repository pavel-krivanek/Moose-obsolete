printing
printOn: aStream
	
	histories ifNotNil: 
		[ histories
 		 	do: [ :aHistory | aStream nextPutAll: aHistory mooseName ]
  			separatedBy: [ aStream nextPut: $, ] ].
		
	versions ifNil: [  ^ super printOn: aStream ].
	
	versions
		do:
			[:each | aStream nextPutAll: (each history indexOf: each) mooseDisplayString]
		separatedBy: [aStream nextPutAll: ',']