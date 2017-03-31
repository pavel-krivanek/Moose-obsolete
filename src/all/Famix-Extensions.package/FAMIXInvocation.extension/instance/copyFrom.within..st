*famix-extensions
copyFrom: anEntity within: aVisitor

	super copyFrom: anEntity within: aVisitor.
	self sender: (aVisitor visit: anEntity sender).
	self receiver: (aVisitor visit: anEntity receiver).
	self signature: anEntity signature copy.
	self receiverSourceCode: anEntity receiverSourceCode copy.
	anEntity candidates do: [:c|
		self addCandidate: (aVisitor visit: c) ]