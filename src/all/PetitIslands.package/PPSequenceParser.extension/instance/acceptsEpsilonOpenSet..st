*petitislands
acceptsEpsilonOpenSet: set
	set add: self.
	^ self children allSatisfy: [:e | e acceptsEpsilonOpenSet: set ]