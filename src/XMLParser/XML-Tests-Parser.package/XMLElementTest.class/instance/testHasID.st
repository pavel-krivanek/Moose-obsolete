tests
testHasID
	| element document |

	element := self newElementWithAttributes.
	self deny: (element hasID: 'test').

	element
		attributeAt: 'xml:id'
		put: 'test'.
	self assert: (element hasID: 'test').

	document := element newDocument.
	document root: element.
	document doctypeDefinition: DTDDoctypeDefinition new.
	document doctypeDefinition
		addValidatorForAttributeIn: element name
		named: 'xml:id'
		type: 'CDATA'
		defaultPragma: 'REQUIRED'
		defaultValue: ''.
	self deny: (element hasID: 'test').

	element
		attributeAt: 'id'
		put: 'test'.
	self deny: (element hasID: 'test').

	document doctypeDefinition
		addValidatorForAttributeIn: element name
		named: 'id'
		type: 'ID'
		defaultPragma: 'REQUIRED'
		defaultValue: ''.
	self assert: (element hasID: 'test').