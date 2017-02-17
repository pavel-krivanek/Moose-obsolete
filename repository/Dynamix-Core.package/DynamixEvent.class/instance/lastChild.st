accessing
lastChild
	"gets the last message event before the return"
	self children isEmpty ifTrue: [^self].
	^(self children last).