expressions
Number
	"Matches a number (returns Number or nil)."

	"Number := hypen? digit+ ( dot digit+ ( e hypen? digit+ )? )?"

	| pos |
	pos := self pos.
	buf reset.
	"hypen?	"
	$- == char
		ifTrue: [ buf nextPut: char.
			self next ].
	"digit+"
	(self characterSet isDigit: char)
		ifFalse: [ self backtrack: pos.
			^ nil ].
	[ buf nextPut: char.
	self characterSet isDigit: self next ] whileTrue.
	"(dot"
	$. == char
		ifTrue: [ buf nextPut: char.
			self next.
			"digit+"
			(self characterSet isDigit: char)
				ifFalse: [ self syntaxError.
					^ nil ].
			[ buf nextPut: char.
			self characterSet isDigit: self next ] whileTrue.
			"(e"
			$e == char
				ifTrue: [ buf nextPut: char.
					self next.
					"hypen?"
					$- == char
						ifTrue: [ buf nextPut: char.
							self next ].
					"digit+"
					(self characterSet isDigit: char)
						ifFalse: [ self syntaxError.
							^ nil ].
					[ buf nextPut: char.
					self characterSet isDigit: self next ] whileTrue
					")?)?" ] ].
	self tWHITESPACE.
	^ Number readFrom: buf contents readStream