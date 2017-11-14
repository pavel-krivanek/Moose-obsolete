testing
includes: aSymbol

	| currentClass |
	currentClass := self.
	
	[currentClass == GHMetaMessages] whileFalse: [ 
		(currentClass includesSelector: aSymbol) ifTrue: [ ^true ].
		currentClass := currentClass superclass.
	 ].

	^false