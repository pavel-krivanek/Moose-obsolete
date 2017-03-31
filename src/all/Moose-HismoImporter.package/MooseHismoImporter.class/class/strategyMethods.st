as yet unclassified
strategyMethods

	^ (MooseHismoImporter methods 
		select: [ :each | each selector beginsWith: 'every'] 
			thenCollect: [ :each | each selector asString ]) sorted: [ :a :b | a < b]