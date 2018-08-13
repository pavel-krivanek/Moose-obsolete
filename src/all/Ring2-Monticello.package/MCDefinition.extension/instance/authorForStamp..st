*Ring2-Monticello
authorForStamp: stamp
	
	^ stamp isEmptyOrNil
		ifTrue: [ '<historical>']
		ifFalse: [ stamp substrings first].