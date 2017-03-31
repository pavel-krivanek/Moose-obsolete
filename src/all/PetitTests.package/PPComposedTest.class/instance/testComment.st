testing-examples
testComment
	self assert: self comment parse: '""' to: '""'.
	self assert: self comment parse: '"a"' to: '"a"'.
	self assert: self comment parse: '"ab"' to: '"ab"'.
	self assert: self comment parse: '"abc"' to: '"abc"'.

	self assert: self comment parse: '""a' to: '""' end: 2.
	self assert: self comment parse: '"a"a' to: '"a"' end: 3.
	self assert: self comment parse: '"ab"a' to: '"ab"' end: 4.
	self assert: self comment parse: '"abc"a' to: '"abc"' end: 5.

	self assert: self comment fail: '"'.
	self assert: self comment fail: '"a'.
	self assert: self comment fail: '"aa'.
	self assert: self comment fail: 'a"'.
	self assert: self comment fail: 'aa"'