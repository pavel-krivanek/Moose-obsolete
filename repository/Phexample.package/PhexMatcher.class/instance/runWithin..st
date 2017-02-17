expecting-performance
runWithin: aDuration 
	^ self
		expect: [[receiver value.
			true]
				valueWithin: aDuration
				onTimeout: [false]]
		describeShould: ['expected to run within <1p> but took longer' expandMacrosWith: aDuration]
		describeShouldNot: ['expected to take longer then <1p> but was faster' expandMacrosWith: aDuration]