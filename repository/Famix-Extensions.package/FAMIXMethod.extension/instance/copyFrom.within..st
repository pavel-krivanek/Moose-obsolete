*Famix-Extensions
copyFrom: anEntity within: aVisitor

	super copyFrom: anEntity within: aVisitor.
	self kind: anEntity kind copy.
	self category: anEntity category copy.

