tests
testEnsureClassesAndNamespaces
	| aMethod |

	model add: (aMethod := FAMIXMethod new).
	self assert: (aMethod parentType isNil).
	self should: [(aMethod parentScope isNil)] raise: Error.


	model ensureClassesAndNamespaces.
	self deny: (aMethod parentType isNil).
	self deny: (aMethod parentScope isNil).

	self assert: (aMethod parentType == model unknownFAMIXClass).
	self assert: (aMethod parentScope == model unknownFAMIXNamespace).
