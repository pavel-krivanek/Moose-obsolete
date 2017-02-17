tests
testRemoveAttributes
	| element |

	element := self newElementWithAttributes.
	self
		assert: element removeAttributes == element;
		assert: element attributeNodes isEmpty;
		deny: element hasAttributes.