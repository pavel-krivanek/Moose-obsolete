tests
testTarget
	| pi |

	pi := self newNode.
	self
		assert: pi target = '';
		assert: (pi target: 'test') == pi;
		assert: pi target = 'test'.