accessing
extensions: anExtension
	"This property is used when the Class is acting as a metaclass. It references the Extensions that specify additional properties of the metaclass. The property is derived from the Extensions whose memberEnds are typed by the Class."
	self extensions
		removeAll;
		addAll: anExtension