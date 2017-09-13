operations - stubs
requiredStub
	"Derivation for Component::/required"
	
	"{OCL} result = (let 	uis : Set(Interface) = allUsedInterfaces(),
        realizingClassifiers : Set(Classifier) = self.realization.realizingClassifier->union(self.allParents()->collect(realization.realizingClassifier))->asSet(),
        allRealizingClassifiers : Set(Classifier) = realizingClassifiers->union(realizingClassifiers.allParents())->asSet(),
        realizingClassifierInterfaces : Set(Interface) = allRealizingClassifiers->iterate(c; rci : Set(Interface) = Set{} | rci->union(c.allUsedInterfaces())),
        ports : Set(Port) = self.ownedPort->union(allParents()->collect(ownedPort))->asSet(),
        usedByPorts : Set(Interface) = ports.required->asSet()
in	    uis->union(realizingClassifierInterfaces)->union(usedByPorts)->asSet()
)"
	
	self notYetImplemented
