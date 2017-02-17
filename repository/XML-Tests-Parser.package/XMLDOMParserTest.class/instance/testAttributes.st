tests
testAttributes
	| document firstPerson  |

	document := XMLDOMParser parse: self addressBookXML.
	firstPerson := document findElementNamed: 'person'.
	self
		assert: (firstPerson attributeAt: 'employee-number') = 'A0000';
		assert: (firstPerson attributeAt: 'family-name') = 'Gates';
		assert: (firstPerson attributeAt: 'first-name') = 'Bob';
		assert:
			firstPerson attributeNames asArray =
				#('employee-number' 'family-name' 'first-name');
		assert: firstPerson attributeAssociations asArray =
			{('employee-number'->'A0000'). ('family-name'->'Gates'). ('first-name'->'Bob').}.