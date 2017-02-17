*Moose-Finder
browseCodeWithNamespaces
	<menuItem: 'Code with namespaces' category: 'Browse'>
	MooseNamespacesCodeBrowser new openOn: (
		(self allNamespaces select: #isRoot) asOrderedCollection asSortedCollection: [:a :b | 
			a name < b name ])