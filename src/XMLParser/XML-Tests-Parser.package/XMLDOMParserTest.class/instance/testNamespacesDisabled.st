tests
testNamespacesDisabled
	| document |

	document :=
		XMLDOMParser
			parse: self addressBookNamespacePrefixedXML
			usingNamespaces: false.
	document allElementsDo: [:each |
		self assert: each namespaceURI = ''.
		(each == document root or: [each isNamed: 'person'])
			ifTrue: [
				self
					assert: each hasPrefix;
					assert:
						each prefix =
							((each == document root) ifTrue: ['book'] ifFalse: ['ps'])]
			ifFalse: [
				self
					deny: each hasPrefix;
					assert: each prefix = '']].