as yet unclassified
find: aString
	^ self 
		resolve: (self createXPathNodesFor: aString) 
		in: self xmlElement