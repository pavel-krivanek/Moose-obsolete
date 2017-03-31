tests
testNewElementNamed
	| element |

	super testNewElementNamed.

	element := self newFactoryWithClasses newElementNamed: 'test'.
	self
		assert: element class == self elementClass;
		assert: element name = 'test'.