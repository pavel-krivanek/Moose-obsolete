tests
testEquals
	| firstNamespace secondNamespace |

	firstNamespace := self newNamespaceNode.
	self assert: firstNamespace = firstNamespace.

	secondNamespace :=
		self nodeClass
			element: firstNamespace element
			name: firstNamespace name
			uri: firstNamespace uri.
	self assert: firstNamespace = secondNamespace.

	secondNamespace :=
		self nodeClass
			element: self newElementWithAttributes
			name: firstNamespace name
			uri: firstNamespace uri.
	self deny: firstNamespace = secondNamespace.

	secondNamespace :=
		self nodeClass
			element: firstNamespace element
			name: 'newPrefix'
			uri: firstNamespace uri.
	self deny: firstNamespace = secondNamespace.

	secondNamespace :=
		self nodeClass
			element: firstNamespace element
			name: firstNamespace name
			uri: 'newURI'.
	self deny: firstNamespace = secondNamespace.