accessing-dom
lastChild
	"Answer the first child of the receiver or nil."

	^ self childNodes isEmpty ifFalse: [ self childNodes last ]