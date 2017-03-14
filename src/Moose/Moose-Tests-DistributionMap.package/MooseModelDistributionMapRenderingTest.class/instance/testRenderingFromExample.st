tests
testRenderingFromExample

	self shouldnt: 
		[ window :=  
			(DistributionMap 
				onContainers: DistributionMap  withAllSubclasses  
				elements: #methods 
				properties: #isAbstract) open ] raise: Error 