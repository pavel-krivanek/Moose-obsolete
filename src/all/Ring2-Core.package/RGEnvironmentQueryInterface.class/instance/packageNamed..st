as yet unclassified
packageNamed: aString
	
	self packagesDo: [:each |
		(each name = aString) ifTrue: [ ^ each ] ].
	
	^ nil