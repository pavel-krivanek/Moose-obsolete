tests
testCountFunction
	self assert:
		(XPath for: 'count(addressbook/person)' in: document) =
			(document allElementsNamed: 'person') size.
	self assert:
		(XPath for: 'addressbook/person[count(@*) >= 4]' in: document) =
			((document allElementsNamed: 'person') copyFrom: 2 to: 3).
	self
		should: [XPath for: 'count()' in: nil]
		raise: XPathArgumentNumberException.
	self
		should: [XPath for: 'count(1)' in: nil]
		raise: XPathTypeException.