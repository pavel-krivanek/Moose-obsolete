private
removeChildren: el
	| ch |
	ch := el attributes at: self childrenKey.
	ch do: [ :c |
		c view ifNotNil: [ 
			c remove.
			stepping removeNode: c.
			self removeChildren: c. ] ]