*XPath-Tests
testStringValue
	super testStringValue.

	self assert:
		(self newNode
			addString: 'before';
			addNode:
				((self nodeClass named: 'element')
					addString: 'content';
					yourself);
			addString: 'after';
			yourself) stringValue = 'beforecontentafter'.