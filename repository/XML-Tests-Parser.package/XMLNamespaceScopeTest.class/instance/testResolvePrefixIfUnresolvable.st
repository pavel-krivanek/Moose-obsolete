tests
testResolvePrefixIfUnresolvable
	| scope |

	scope := self newNamespaceScope.
	self namespaces keysAndValuesDo: [:prefix :uri |
		self assert:
			(scope
				resolvePrefix: prefix
				ifUnresolvable: [#unresolvable]) = #unresolvable.
		scope mapPrefix: prefix to: uri.
		self assert:
			(scope
				resolvePrefix: prefix
				ifUnresolvable: [self fail]) = uri].

	self assert:
		(scope
			resolvePrefix: 'xml'
			ifUnresolvable: [self fail]) = scope xmlNamespaceURI.
	self  assert:
		(scope
			resolvePrefix: 'xmlns'
			ifUnresolvable: [self fail]) = scope xmlnsNamespaceURI.