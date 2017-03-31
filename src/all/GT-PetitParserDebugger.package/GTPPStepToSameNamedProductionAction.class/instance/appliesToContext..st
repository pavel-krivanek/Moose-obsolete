testing
appliesToContext: aContext

	^ (super appliesToContext: aContext) and: [ 
		self session isPPProduction: aContext receiver ]