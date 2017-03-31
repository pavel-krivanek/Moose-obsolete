tests
testAttributeListClass
	| factory |

	super testAttributeListClass.

	factory := self newFactoryWithClasses.
	self
		assert: (factory attributeListClass: self attributeListClass) == factory;
		assert: factory attributeListClass == self attributeListClass.