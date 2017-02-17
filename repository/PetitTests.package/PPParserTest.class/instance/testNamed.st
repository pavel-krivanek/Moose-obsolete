testing-accessing
testNamed
	| parser |
	parser := PPSequenceParser new.
	self assert: parser name isNil.
	parser := PPChoiceParser named: 'choice'.
	self assert: parser name equals: 'choice'.
	parser := $* asParser name: 'star'.
	self assert: parser name equals: 'star'