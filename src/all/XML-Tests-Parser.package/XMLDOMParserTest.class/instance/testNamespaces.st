tests
testNamespaces
	| document  |

	document := XMLDOMParser parse: self addressBookNamespacePrefixedXML.
	document allElementsDo: [:each |
		(each == document root or: [each isNamed: 'person'])
			ifTrue: [
				self assert: each hasPrefix.
				each == document root
					ifTrue: [
						self
							assert: each prefix = 'book';
							assert: each namespaceURI = 'bookNS']
					ifFalse: [
						self
							assert: each prefix = 'ps';
							assert: each namespaceURI = 'personNS']]
			ifFalse: [
				self
					assert: each namespaceURI = 'defaultNS';
					deny: each hasPrefix;
					assert: each prefix = '']].