tests
testNamespacesDeclaringDisabled
	| document |

	document := XMLDOMParser parse: self addressBookNamespacedXML usingNamespaces: false.
	document allElementsDo: [:each |
		self
			deny: each hasNamespaces;
			deny: each declaresDefaultNamespace;
			deny: (each declaresPrefix: 'ps' uri: 'personNS');
			deny: (each isDeclaredPrefix: 'ps');
			deny: (each isDeclaredPrefix: 'ps' uri: 'personNS')].