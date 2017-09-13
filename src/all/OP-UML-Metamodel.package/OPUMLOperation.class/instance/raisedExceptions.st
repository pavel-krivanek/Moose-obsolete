accessing
raisedExceptions
	"The Types representing exceptions that may be raised during an invocation of this operation."
	^ raisedExceptions ifNil: [ raisedExceptions := OrderedCollection new ]