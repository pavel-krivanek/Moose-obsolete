*Famix-Extensions
copyFrom: anEntity within: aVisitor

	super copyFrom: anEntity within: aVisitor.
	self declaredType: (aVisitor visit: anEntity declaredType).
