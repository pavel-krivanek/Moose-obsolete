adding
addShapesToView
	self shapes collection reverse do: [ :s | self view canvas addFixedShape: s ].