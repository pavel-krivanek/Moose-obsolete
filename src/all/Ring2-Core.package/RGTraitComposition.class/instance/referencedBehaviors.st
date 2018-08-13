as yet unclassified
referencedBehaviors

	^ self transformations collect: [ :each |
		each isTrait 
			ifTrue: [ each ]
			ifFalse: [ each subject ] ]