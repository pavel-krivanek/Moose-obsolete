testing
canMergeWith: anRGObject visited: visitedDefinitions

	| newVisited |

	(visitedDefinitions includes: self) ifTrue: [ ^ true ].
	
	(self isRingFullyResolved or: [ anRGObject isRingFullyResolved]) ifTrue: [^ true].

	(super canMergeWith: anRGObject visited: visitedDefinitions) ifFalse: [ ^ false ].

	newVisited := visitedDefinitions copyWith: self.
	
	self superclass ~~ self ifTrue: [ 
		(self superclass canMergeWith: anRGObject superclass visited: newVisited) ifFalse: [ ^ false ]].

	self metaclass ~~ self ifTrue: [ 
		(self metaclass canMergeWith: anRGObject metaclass visited: newVisited) ifFalse: [ ^ false ]].
	
	^ true.