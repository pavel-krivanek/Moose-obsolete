accessing
inheritedMembers
	"All elements inherited by this Classifier from its general Classifiers."
	^ inheritedMembers ifNil: [ inheritedMembers := OrderedCollection new ]