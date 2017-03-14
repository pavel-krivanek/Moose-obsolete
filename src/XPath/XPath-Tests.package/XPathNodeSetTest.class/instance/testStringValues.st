tests
testStringValues
	self
		assert: self emptyList stringValues isEmpty;
		assert:
			self listWithItems stringValues =
				(self listWithItems collect: [:each | each stringValue])