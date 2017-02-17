visiting - steps
visitNamespaceStep: aNamespaceStep
	self emitAll: ' namespaceAxis:'.
	^ super visitNamespaceStep: aNamespaceStep.