accessing
provideds
	"The Interfaces that the Component exposes to its environment. These Interfaces may be Realized by the Component or any of its realizingClassifiers, or they may be the Interfaces that are provided by its public Ports."
	^ provideds ifNil: [ provideds := OrderedCollection new ]