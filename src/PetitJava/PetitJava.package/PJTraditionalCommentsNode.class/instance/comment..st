as yet unclassified
comment: anArray
	| temp temp2 |
	temp := OrderedCollection new.
	temp2 := anArray.
	temp2
		ifNotNil: [ 
			[ temp2 first = '*' and: temp2 second = '/' ]
				whileFalse: [ 
					temp2 first = '*'
						ifFalse: [ temp2 first second ifNotNil: [ temp add: temp2 first second ] ]
						ifTrue: [ temp2 first first ifNotNil: [ temp add: temp2 first first ] ].
					temp2 := temp2 second ].
			comment := (temp collect: #asciiValue) asByteArray asString ].
	anArray isNil
		ifTrue: [ comment := '' ]