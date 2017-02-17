examples
example3

	"self example3"
	^ (self 
		onContainers: DistributionMap  withAllSubclasses  
		elements: #methods 
		properties: #isAbstract )
			open.
	
