tests
testPositionFunction
	self assert:
		(XPath
			for: ' position( ) '
			in: document) = 1.

	(document allElementsNamed: 'person') do: [:each |
		self assert: (XPath for: ' position() ' in: each) = 1].

	(document allElementsNamed: 'person')
		withIndexDo: [:each :i |
			self assert:
				(XPath
					for: 'addressbook/person[position() = ', i printString, ']'
					in: document) = (XMLNodeList with: each).
			self assert:
				(XPath
					for: 'addressbook/person[', i printString, '=position()]'
					in: document) = (XMLNodeList with: each).
			self assert:
				(XPath
					for: 'addressbook/person[ ', i printString, ' ]'
					in: document) = (XMLNodeList with: each)].

	self
		should: ['position(0)' asXPath evaluate]
		raise: XPathException.