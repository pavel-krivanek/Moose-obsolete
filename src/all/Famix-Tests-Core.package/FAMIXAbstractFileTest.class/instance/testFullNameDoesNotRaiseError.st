tests
testFullNameDoesNotRaiseError
	self
		shouldnt: [ self actualClass new
				mooseModel:
					(MooseModel new
						rootFolder: FileSystem memory root;
						yourself);
					name: 'test';
				fullName ]
		raise: Error