*Famix-Extensions
copyFrom: anEntity within: aVisitor

	super copyFrom: anEntity within: aVisitor.
	self source: (aVisitor visit: anEntity source).
	self target: (aVisitor visit: anEntity target).