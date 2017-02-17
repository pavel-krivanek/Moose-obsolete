accessing
stringNodeClass
	"Can be overridden to return a custom XMLString subclass."

	"for now this delegates to the soft-deprecated #stringClass to not
	break custom subclasses that override it expecting it to be sent"
	^ self stringClass