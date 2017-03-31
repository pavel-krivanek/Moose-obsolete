tests
testAsXMLAttributeSpec
	| attributeSpec |

	attributeSpec := self newAttributeSpec.
	self assert: attributeSpec asXMLAttributeSpec == attributeSpec.