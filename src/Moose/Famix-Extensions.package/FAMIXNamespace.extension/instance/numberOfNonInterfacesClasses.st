*famix-extensions-metrics
numberOfNonInterfacesClasses
	<MSEProperty: #numberOfNonInterfacesClasses type: #Number>
	<derived>
	<MSEComment: 'The number of non interfaces classes in a namespace'>
	
	^self
		lookUpPropertyNamed: #numberOfNonInterfacesClasses
		computedAs: [(self types reject: #isInterface) size]