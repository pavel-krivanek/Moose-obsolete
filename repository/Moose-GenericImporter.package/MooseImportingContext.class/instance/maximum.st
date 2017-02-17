importing-filters
maximum
	
	| all |
	all := Set new.
	self class entityDependencies
		keysAndValuesDo: [:key :value | all addAll: value].
	^all