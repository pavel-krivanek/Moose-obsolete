*famix-extensions-metrics
lcom3

	<MSEProperty: #lcom3 type: #Number>
	<MSEComment: 'lack of cohesion in methods 3 (lcom3)'>
	<derived>

	^ self
		lookUpPropertyNamed: #lcom3
		computedAs: [self calculateLCOM3]