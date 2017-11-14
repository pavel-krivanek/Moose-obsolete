accessing
parentEntities
	self
		deprecated: 'Use #parents instead'
		on: '19 Septembre 2017'
		in: 'Moose 6.1'
		transformWith: '`@receiver parentEntities' -> '`@receiver parents'.
	^ self parents