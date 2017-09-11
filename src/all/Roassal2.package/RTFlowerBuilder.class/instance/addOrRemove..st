private
addOrRemove: el
	| key |
	
	key := #click.
	(el attributes includesKey: key)
		ifTrue: [ 
			self addChildren: el.
			view edges pushBack.
			el trachelShape strokeWidth: 1 ]
		ifFalse: [
			el attributes at: key put: 0. 
			self removeChildren: el.
			(el attributes at: self childrenKey)
				ifNotEmpty: [ el trachelShape strokeWidth: 2  ] ].

		