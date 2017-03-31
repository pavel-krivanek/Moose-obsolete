tests
testClassForElementNamespaceURI
	| factory |

	(factory := self newFactoryWithClasses)
		handleElement: 'user'
		namespaceURI: 'userNS'
		withClass: self userElementClass.
	self assert:
		(factory
			classForElement: 'user'
			namespaceURI: 'userNS') == self userElementClass.
	self assert:
		(factory
			classForElement: 'prefix:user'
			namespaceURI: 'userNS') == self userElementClass.
	self assert:
		(factory
			classForElement: 'user'
			namespaceURI: 'absentNS') == self elementClass.

	factory
		handleElement: 'prefix:user'
		namespaceURI: 'userNS'
		withClass: self usernameElementClass.
	self assert:
		(factory
			classForElement: 'user'
			namespaceURI: 'userNS') == self userElementClass.
	self assert:
		(factory
			classForElement: 'prefix:user'
			namespaceURI: 'userNS') == self usernameElementClass.
	self assert:
		(factory
			classForElement: 'prefix:user'
			namespaceURI: 'absentNS') == self elementClass.