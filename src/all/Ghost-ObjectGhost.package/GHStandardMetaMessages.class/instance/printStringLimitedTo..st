printing
printStringLimitedTo: limit
	"Answer a String whose characters are a description of the receiver.
	If you want to print without a character limit, use fullPrintString."
	| limitedString |
	limitedString := String streamContents: [:s | s << self printGhost ] limitedTo: limit.
	limitedString size < limit ifTrue: [^ limitedString].
	^ limitedString , '...etc...'