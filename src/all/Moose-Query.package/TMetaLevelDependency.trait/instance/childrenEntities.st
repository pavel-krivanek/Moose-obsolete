accessing
childrenEntities
	self
		deprecated: 'Use #children instead'
		on: '19 Septembre 2017'
		in: 'Moose 6.1'
		transformWith: '`@receiver childrenEntities' -> '`@receiver children'.
	^ self children