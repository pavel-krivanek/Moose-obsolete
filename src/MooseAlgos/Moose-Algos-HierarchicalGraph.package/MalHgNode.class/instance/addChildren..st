adding
addChildren: aCollection
	"Add multiple children to this node."
	aCollection do: [ :each | 
		self addChild: each.
	].