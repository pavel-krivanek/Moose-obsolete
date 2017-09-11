private
openNewObject: evt
	| obj temp |
	obj := evt element model value.
	obj ifNil: [ ^ self ].
	self addObject: obj.
	temp := (self objects at: obj) first.
	(view edges select: [ :e | 
		e from = evt element and: [ e to = temp ] ]) ifEmpty: [ 
		view add: (self edgeFrom: evt element to: (self objects at: obj) first) ] 