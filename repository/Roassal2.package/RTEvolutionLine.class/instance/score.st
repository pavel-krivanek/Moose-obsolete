accessing
score
	| score |
	timeline ifNil: [ ^ nil ].
	score := (timeline last value - timeline first value)/timeline first value.
	^ score