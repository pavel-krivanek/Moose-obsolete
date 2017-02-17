testing
assertNoErrorForAllMetricsOf: entity
	(entity mooseDescription allAttributes select: [ :attr | attr type = FM3 number ])
		do: [ :each | 
			self shouldnt: (entity mmGetProperty: each) raise: Error ]