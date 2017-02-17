accessing
stringResult 
	| r |
	r := self result.
	r isCollection ifTrue: [
		^ (String with: Character cr) join: (r collect: #mooseDisplayString) ].
	^ r mooseDisplayString