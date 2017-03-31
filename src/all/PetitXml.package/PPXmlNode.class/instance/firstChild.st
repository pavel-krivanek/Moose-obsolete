accessing-dom
firstChild
	"Answer the first child of the receiver or nil."

	^ self childNodes isEmpty ifFalse: [ self childNodes first ]