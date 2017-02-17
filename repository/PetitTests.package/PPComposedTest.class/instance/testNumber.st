testing-examples
testNumber
	self assert: self number parse: '1' to: '1'.
	self assert: self number parse: '12' to: '12'.
	self assert: self number parse: '12.3' to: '12.3'.
	self assert: self number parse: '12.34' to: '12.34'.

	self assert: self number parse: '1..' to: '1' end: 1.
	self assert: self number parse: '12-' to: '12' end: 2.
	self assert: self number parse: '12.3.' to: '12.3' end: 4.
	self assert: self number parse: '12.34.' to: '12.34' end: 5.
	
	self assert: self number parse: '-1' to: '-1'.
	self assert: self number parse: '-12' to: '-12'.
	self assert: self number parse: '-12.3' to: '-12.3'.
	self assert: self number parse: '-12.34' to: '-12.34'.
	
	self assert: self number fail: ''.
	self assert: self number fail: '-'.
	self assert: self number fail: '.'.
	self assert: self number fail: '.1'