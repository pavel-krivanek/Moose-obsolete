tests
testIsInLanguage
	| nodeWithElements |

	super testIsInLanguage.
	nodeWithElements := self newNodeWithElements.
	nodeWithElements allNodesDo: [:each |
		self
			deny: (each isInLanguage: 'en-us');
			deny: (each isInLanguage: 'EN-US');
			deny: (each isInLanguage: 'En');
			deny: (each isInLanguage: 'de-de');
			deny: (each isInLanguage: 'DE-DE');
			deny: (each isInLanguage: 'De')].

	nodeWithElements attributeAt: 'xml:lang' put: 'En-Us'.
	nodeWithElements allNodesDo: [:each |
		self
			assert: (each isInLanguage: 'en-us');
			assert: (each isInLanguage: 'EN-US');
			assert: (each isInLanguage: 'En');
			deny: (each isInLanguage: 'de-de');
			deny: (each isInLanguage: 'DE-DE');
			deny: (each isInLanguage: 'De')].