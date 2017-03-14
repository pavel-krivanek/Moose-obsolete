*Famix-Extensions
fanIn
	<MSEProperty: #fanIn type: #Number>
	<derived>
	<MSEComment: 'Number of client classes'>

	^self
		lookUpPropertyNamed: #fanIn
		computedAs: [self clientTypes size]