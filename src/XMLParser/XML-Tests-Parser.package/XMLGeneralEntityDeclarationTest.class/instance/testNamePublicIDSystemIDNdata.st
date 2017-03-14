tests
testNamePublicIDSystemIDNdata
	| declaration |

	declaration :=
		self nodeClass
			name: 'one'
			publicID: 'two'
			systemID: 'three'
			ndata: 'four'.
	self
		assert: declaration class == self nodeClass;
		assert: declaration name = 'one';
		assert: declaration publicID = 'two';
		assert: declaration systemID = 'three';
		assert: declaration ndata = 'four'.