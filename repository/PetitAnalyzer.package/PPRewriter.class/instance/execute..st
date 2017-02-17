public
execute: aParser
	"Perform the replace rules of the receiver on aParser, answer the resulting parser."

	| previous result |
	previous := context.
	changed := false.
	context := Dictionary new.
	result := aParser transform: [ :each |
		| transformed |
		transformed := self performRulesOn: each.
		transformed isNil
			ifTrue: [ each ]
			ifFalse: [ changed := true. transformed ] ].
	context := previous.
	^ result