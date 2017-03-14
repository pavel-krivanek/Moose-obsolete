tests
testRenderingFromExample3ShowingContainer

	self shouldnt: 
		[ window := (DistributionMap 
							onContainers: Collection withAllSubclasses  
							elements: #allInstVarNames 
							properties: [:element | element size > 5])
							title: 'Collection subclasses and their instance variables';
							 open ] raise: Error 