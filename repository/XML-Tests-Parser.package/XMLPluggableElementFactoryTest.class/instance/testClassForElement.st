tests
testClassForElement
	| factory |

	(factory := self newFactoryWithClasses)
		handleElement: 'user'
		withClass: self userElementClass.
	self
		assert: (factory classForElement: 'user') == self userElementClass;
		assert: (factory classForElement: 'prefix:user') == self userElementClass;
		assert: (factory classForElement: 'absent') == self elementClass.

	factory
		handleElement: 'prefix:user'
		withClass: self usernameElementClass.
	self
		assert: (factory classForElement: 'user') == self userElementClass;
		assert: (factory classForElement: 'prefix:user') == self usernameElementClass;
		assert: (factory classForElement: 'prefix:absent') == self elementClass.