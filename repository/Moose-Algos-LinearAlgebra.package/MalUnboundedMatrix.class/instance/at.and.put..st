initialize-release
at: row and: column put: aNumber
	
	^[matrix at: row and: column put: aNumber]
		on: "SubscriptOutOfBoundsError" Error
		do: [:ex | backgroundValue]