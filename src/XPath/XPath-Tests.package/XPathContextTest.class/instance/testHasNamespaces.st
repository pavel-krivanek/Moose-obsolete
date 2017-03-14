tests
testHasNamespaces
	| context |

	context := self newContext.
	self deny: context hasNamespaces.

	context declareNamespaces: self namespaces.
	self assert: context hasNamespaces.