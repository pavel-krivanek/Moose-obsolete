enumerating
nodesDo: aBlock
	"Recursively enumerate over the receiver, all arguments and children."

	aBlock value: self.
	self attributes
		do: [ :each | each nodesDo: aBlock ].
	self children
		do: [ :each | each nodesDo: aBlock ]