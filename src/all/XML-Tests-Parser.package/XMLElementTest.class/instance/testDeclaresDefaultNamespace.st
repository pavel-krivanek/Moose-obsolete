tests
testDeclaresDefaultNamespace
	| element |

	element := self newNodeWithElements.
	self deny: element declaresDefaultNamespace.

	element defaultNamespace: 'defaultNS'.
	self assert: element declaresDefaultNamespace.
	element elementsDo: [:each |
		self deny: each declaresDefaultNamespace].

	element elementsDo: [:each |
		each defaultNamespace: 'newDefaultNS'.
		self assert: each declaresDefaultNamespace].

	self assert: element declaresDefaultNamespace.	
	element undeclarePrefix: ''.
	self deny: element declaresDefaultNamespace.
	element elementsDo: [:each |
		self assert: each declaresDefaultNamespace].