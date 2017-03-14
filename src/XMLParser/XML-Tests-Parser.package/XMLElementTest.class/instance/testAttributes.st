tests
testAttributes
	| element attributeDictionary |

	element := self newElementWithAttributes.
	attributeDictionary := element attributes.
	self
		assert: attributeDictionary class == self attributesClass;
		assert: attributeDictionary size = element attributeNodes size.
	self assert:
		(element attributeNodes allSatisfy: [:each |
			(attributeDictionary at: each name) = each value]).