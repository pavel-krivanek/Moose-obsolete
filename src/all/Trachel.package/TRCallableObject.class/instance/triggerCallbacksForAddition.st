callbacks
triggerCallbacksForAddition
	"aStep is a point that represents a translation step"
	self hasCallback ifFalse: [ ^ self ].
	self callbacks do: [ :c | 
		c isAddedCallback ifTrue: [ 
			c addShape: self ] ]