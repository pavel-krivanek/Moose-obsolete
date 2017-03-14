As yet unclassified
min
	
	^(self reject: #isNil)
		inject: MalUnlimited positive
		into: [:each :min | min min: each]