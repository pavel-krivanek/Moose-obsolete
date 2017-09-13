accessing
clientDependencies: aDependency
	"Indicates the Dependencies that reference this NamedElement as a client."
	self clientDependencies
		removeAll;
		addAll: aDependency