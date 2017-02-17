tests
testNamespacesResolving
	| document |

	document := XMLDOMParser parse: self addressBookNamespacedXML.
	document allElementsDo: [:each |
		self
			assert: each defaultNamespace = 'defaultNS';
			assert: (each resolvePrefix: '') = 'defaultNS';
			assert: (each resolvePrefix: 'book') = 'bookNS';
			assert: (each resolvePrefix: 'ps') = 'personNS';
			assert:
				each namespaceURI =
					(each hasPrefix
						ifTrue: [each resolvePrefix: each prefix]
						ifFalse: [each defaultNamespace])]