testing
testIsConstructor
	self
		assert:
			(self actualClass new
				isConstructor: true;
				isConstructor).
	self
		deny:
			(self actualClass new
				isConstructor: true;
				isConstructor: false;
				isConstructor).
	self
		assert:
			(self actualClass new
				isConstructor: true;
				isConstructor: false;
				isConstructor: true;
				isConstructor)