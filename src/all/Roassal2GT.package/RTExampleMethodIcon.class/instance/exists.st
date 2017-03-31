testing
exists
	^ super exists
		and: [ self methodClass includesSelector: (self selector, 'Icon') asSymbol ]