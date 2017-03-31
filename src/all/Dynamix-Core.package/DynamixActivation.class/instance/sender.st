accessing-derived
sender
	"The reference which sent the message"

	^ self parent notNil ifTrue: [ self parent receiver ]