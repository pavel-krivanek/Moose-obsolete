*Famix-Extensions
copyFrom: anEntity within: aVisitor

	super copyFrom: anEntity within: aVisitor.
	"self previous: (aVisitor visit: anEntity previous)."