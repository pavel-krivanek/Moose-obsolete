tests
testSplitAt
	| stringNode newStringNode element |

	stringNode := self nodeClass string: 'onetwo'.
	newStringNode := stringNode splitAt: 0.
	self
		deny: stringNode == newStringNode;
		assert: stringNode string = '';
		assert: newStringNode string = 'onetwo'.

	stringNode := self nodeClass string: 'onetwo'.
	newStringNode := stringNode splitAt: 7.
	self
		deny: stringNode == newStringNode;
		assert: stringNode string = 'onetwo';
		assert: newStringNode string = ''.

	(element := self newElement) addNode: stringNode.
	newStringNode := stringNode splitAt: 4.
	self
		deny: stringNode == newStringNode;
		assert: stringNode string = 'one';
		assert: newStringNode string = 'two';
		assert: (element nodeAfter: stringNode) == newStringNode.