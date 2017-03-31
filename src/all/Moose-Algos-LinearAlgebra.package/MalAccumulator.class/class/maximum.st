instance creation
maximum
	
	^self
		value: MalUnlimited negative
		using: [:max :each | max max: each]