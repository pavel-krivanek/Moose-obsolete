operations - stubs
providedStub
	"Derivation for Component::/provided"
	
	"{OCL} result = (let 	ris : Set(Interface) = allRealizedInterfaces(),
        realizingClassifiers : Set(Classifier) =  self.realization.realizingClassifier->union(self.allParents()->collect(realization.realizingClassifier))->asSet(),
        allRealizingClassifiers : Set(Classifier) = realizingClassifiers->union(realizingClassifiers.allParents())->asSet(),
        realizingClassifierInterfaces : Set(Interface) = allRealizingClassifiers->iterate(c; rci : Set(Interface) = Set{} | rci->union(c.allRealizedInterfaces())),
        ports : Set(Port) = self.ownedPort->union(allParents()->collect(ownedPort))->asSet(),
        providedByPorts : Set(Interface) = ports.provided->asSet()
in     ris->union(realizingClassifierInterfaces) ->union(providedByPorts)->asSet())"
	
	self notYetImplemented
