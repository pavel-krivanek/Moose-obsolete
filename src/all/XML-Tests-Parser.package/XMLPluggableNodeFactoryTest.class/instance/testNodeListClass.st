tests
testNodeListClass
	| factory |

	super testNodeListClass.

	factory := self newFactoryWithClasses.
	self
		assert: (factory nodeListClass: self nodeListClass) == factory;
		assert: factory nodeListClass == self nodeListClass.