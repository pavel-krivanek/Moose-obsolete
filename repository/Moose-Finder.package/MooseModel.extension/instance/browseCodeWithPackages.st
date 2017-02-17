*Moose-Finder
browseCodeWithPackages
	<menuItem: 'Code with packages' category: 'Browse'>
	MoosePackagesCodeBrowser new openOn: (
		self allPackages asOrderedCollection asSortedCollection: [:a :b | 
			a name < b name ])