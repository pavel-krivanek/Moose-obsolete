*Famix-Extensions
copyFrom: anEntity within: aVisitor

	super copyFrom: anEntity within: aVisitor.
	self superclass: (aVisitor visit: anEntity superclass).
	self subclass: (aVisitor visit: anEntity subclass).