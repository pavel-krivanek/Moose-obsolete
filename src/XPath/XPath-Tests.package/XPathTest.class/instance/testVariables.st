tests
testVariables
	| context result |

	(context := self newContext)
		variableAt: 'doc' put: document;
		variableAt: 'pos' ifAbsentPut: [4].
	result :=
		(XPath for: '$doc/addressbook/person[position() != $pos]')
			in: nil
			context: context.
	self assert: result = (document allElementsNamed: 'person') allButLast.

	context :=
		self contextClass variables:
			(Dictionary
				with: 'doc' -> document
				with: 'city' -> 'Los Angeles').
	result :=
		(XPath for: '($doc)/addressbook/person[.//address[@city=$city]]')
			in: nil
			context: context.
	self
		assert: result size = 2;
		assert:
			result =
				((document allElementsNamed: 'person') select: [:each |
					((each elementAt: 'address') attributeAt: 'city') = 'Los Angeles']).