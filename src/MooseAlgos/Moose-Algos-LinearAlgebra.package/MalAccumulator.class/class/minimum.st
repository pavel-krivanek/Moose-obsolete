instance creation
minimum
	
	^self
		value: MalUnlimited positive
		using: [:min :each | min min: each]