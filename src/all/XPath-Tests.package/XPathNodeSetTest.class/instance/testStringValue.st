tests
testStringValue
	| firstStringValue |

	self assert: self emptyList stringValue = ''.

	firstStringValue := self listWithItems stringValues first.
	self
		assert: self listWithItems stringValue = firstStringValue;
		assert: (self listWithItems last <<< 'node()') stringValue = firstStringValue.