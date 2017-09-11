private
commentOFMethod: method
	| methodComment |
	method methodClass isNil
		ifTrue: [ ^ '' ].
	methodComment := ''.
	^ ((method ast comments collect: [ :a | a contents ])
		inject: ''
		into: [ :a :b | a , Character linefeed asString , Character linefeed asString , b ]) trimBoth