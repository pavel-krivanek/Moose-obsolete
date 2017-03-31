*Famix-Extensions
ensureClassesAndNamespaces
	<menuItem: 'Ensure Classes and Namespaces' category: 'Utilities'>
	self allMethods
		do: [ :each | each parentType ifNil: [ each parentType: self unknownFAMIXClass ] ].
	self allClasses
		do: [ :each | each container ifNil: [ each container: self unknownFAMIXNamespace ] ]