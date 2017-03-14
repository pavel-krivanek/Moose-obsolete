tests
testCapacity
	self hasCapacity
		ifTrue: [
			self
				assert: self emptyList capacity >= 0;
				assert: self listWithSingleItem capacity >= 1;
				assert: self listWithItems capacity >= self listItems size]