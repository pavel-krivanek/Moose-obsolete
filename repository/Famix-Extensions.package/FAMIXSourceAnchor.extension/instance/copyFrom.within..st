*Famix-Extensions
copyFrom: anEntity within: aVisitor

	super copyFrom: anEntity within: aVisitor.
	self element: (aVisitor visit: anEntity)