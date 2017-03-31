moosechef-scoping-filtering
namespaceScope
	"we ask the namespaceScope of the parameterizable class"
	
	^ self parameterizableClass ifNotNil: [
		self parameterizableClass namespaceScope ]