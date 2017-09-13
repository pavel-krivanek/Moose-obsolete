accessing
constrainedElements
	"The ordered set of Elements referenced by this Constraint."
	^ constrainedElements ifNil: [ constrainedElements := OrderedCollection new ]