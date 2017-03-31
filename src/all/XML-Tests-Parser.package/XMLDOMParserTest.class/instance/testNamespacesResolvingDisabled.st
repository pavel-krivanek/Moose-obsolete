tests
testNamespacesResolvingDisabled
	| document |

	document :=
		XMLDOMParser
			parse: self addressBookNamespacedXML
			usingNamespaces: false.
	document allElementsDo: [:each |
		self
			assert: each defaultNamespace = '';
			assert: (each resolvePrefix: '') = '';
			assert: (each resolvePrefix: 'book') = '';
			assert: (each resolvePrefix: 'ps') = '';
			assert:
				each namespaceURI =
					(each hasPrefix
						ifTrue: [each resolvePrefix: each prefix]
						ifFalse: [each defaultNamespace])]