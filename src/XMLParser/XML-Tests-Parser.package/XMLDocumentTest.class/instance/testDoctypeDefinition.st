tests
testDoctypeDefinition
	| document doctypeDefinition |

	document := self newNode.
	self assert: document doctypeDefinition isNil.

	doctypeDefinition := DTDDoctypeDefinition new.
	self
		assert: (document doctypeDefinition: doctypeDefinition) == document;
		assert: document doctypeDefinition == doctypeDefinition.