accessing
at: aKey put: aValue
	^ self critical: [
		(self collection includesKey: aKey)
			ifFalse: [
				self collection size >= self maxSize
					ifTrue: [self collection removeAll]].
		self collection
			at: aKey
			put: aValue]