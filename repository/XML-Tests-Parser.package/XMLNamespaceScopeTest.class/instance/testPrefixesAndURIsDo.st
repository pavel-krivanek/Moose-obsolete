tests
testPrefixesAndURIsDo
	| associations |

	associations := OrderedCollection new.
	self newNamespaceScope prefixesAndURIsDo: [:prefix :uri |
		associations addLast: prefix -> uri].
	self assert: associations isEmpty.

	self newNamespaceScopeWithNamespaces prefixesAndURIsDo: [:prefix :uri |
		associations addLast: prefix -> uri].
	self assert: associations asArray = self namespaces associations asArray.