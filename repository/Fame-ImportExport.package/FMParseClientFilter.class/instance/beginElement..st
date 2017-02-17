parsing
beginElement: name
	
	(filter includes: name)
		ifTrue: [ 
			shouldSkip := false.
			^ parserClient beginElement: name
		]
		ifFalse: [
			shouldSkip := true.
			^ self.	
		].