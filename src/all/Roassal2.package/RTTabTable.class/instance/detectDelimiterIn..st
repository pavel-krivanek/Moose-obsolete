private-utility
detectDelimiterIn: aString
	| options first second |
	aString lines size = 0
		ifTrue: [ ^ Character tab ].
	options := Array with: Character tab with: $; with: $,.
	first := (options collect: [ :each | each -> (aString lines first occurrencesOf: each) ]) asDictionary.
	second := first.
	aString lines size > 1
		ifTrue: [ second := (options collect: [ :each | each -> (aString lines second occurrencesOf: each) ]) asDictionary ].
	^ (options detect: [ :each | (first at: each) > 0 and: [ (first at: each) = (second at: each) ] ] ifNone: [ Character tab ]) value