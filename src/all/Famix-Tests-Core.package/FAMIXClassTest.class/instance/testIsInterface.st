tests
testIsInterface
	self
		assert:
			(self actualClass new
				isInterface: true;
				isInterface)