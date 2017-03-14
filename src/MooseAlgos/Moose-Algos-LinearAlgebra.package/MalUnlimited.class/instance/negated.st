as yet unclassified
negated

	^self positive 
		ifTrue: [ self class negative ] 
		ifFalse: [ self class positive ]