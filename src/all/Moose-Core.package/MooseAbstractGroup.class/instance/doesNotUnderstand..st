reflective operations
doesNotUnderstand: aMessage
	"Forward message to collection"

	^ [ aMessage sendTo: self entities ]
		on: MessageNotUnderstood
		do: [ super doesNotUnderstand: aMessage ]