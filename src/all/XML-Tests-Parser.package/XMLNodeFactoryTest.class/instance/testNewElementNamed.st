tests
testNewElementNamed
	| element |

	element := self newFactory newElementNamed: 'test'.
	self
		assert: element class == XMLElement;
		assert: element name = 'test'.