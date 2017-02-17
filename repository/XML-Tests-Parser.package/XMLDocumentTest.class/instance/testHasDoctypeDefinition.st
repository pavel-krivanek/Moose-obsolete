tests
testHasDoctypeDefinition
	| document |

	document := self newNode.
	self deny: document hasDoctypeDefinition.

	document doctypeDefinition: DTDDoctypeDefinition new.
	self assert: document hasDoctypeDefinition.

	document doctypeDefinition: nil.
	self deny: document hasDoctypeDefinition.