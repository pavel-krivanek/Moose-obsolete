tests
testNamespacesDeclaring
	| document |

	document := XMLDOMParser parse: self addressBookNamespacedXML.
	document allElementsDo: [:each |
		self assert: each hasNamespaces.
		each == document root
			ifTrue: [
				self
					assert: each declaresDefaultNamespace;
					assert: (each declaresPrefix: 'ps' uri: 'personNS')]
			ifFalse: [ 
				self
					deny: each declaresDefaultNamespace;
					deny: (each declaresPrefix: 'ps' uri: 'personNS')].
		self
			deny: (each declaresPrefix: 'undeclared' uri: 'undeclaredNS');
			deny: (each isDeclaredPrefix: 'undeclared');
			deny: (each isDeclaredPrefix: 'undeclared' uri: 'undeclaredNS');
			assert: (each isDeclaredPrefix: 'ps');
			assert: (each isDeclaredPrefix: 'ps' uri: 'personNS')].