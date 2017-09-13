accessing
redefinitionContexts
	"The contexts that this element may be redefined from."
	^ redefinitionContexts ifNil: [ redefinitionContexts := OrderedCollection new ]