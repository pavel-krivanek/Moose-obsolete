private
emitQuotedString: aString
	self emit: $'.
	"use #to:do: for speed"
	1 to: aString size do: [:i | | nextChar |
		"escape $' by outputting another $' before it"
		(nextChar := aString at: i) == $'
			ifTrue: [self emit: $'].
		self emit: nextChar].
	self emit: $'.