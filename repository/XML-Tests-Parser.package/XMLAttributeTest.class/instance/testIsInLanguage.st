tests
testIsInLanguage
	| element |

	super testIsInLanguage.
	element := self newElementWithAttributes.	
	element attributeNodesDo: [:each |
		self
			deny: (each isInLanguage: 'en');
			deny: (each isInLanguage: 'EN');
			deny: (each isInLanguage: 'En');
			deny: (each isInLanguage: 'en-us');
			deny: (each isInLanguage: 'EN-US');
			deny: (each isInLanguage: 'En-Us')].

	element attributeAt: 'xml:lang' put: 'En'.
	element attributeNodesDo: [:each |
		self
			assert: (each isInLanguage: 'en');
			assert: (each isInLanguage: 'EN');
			assert: (each isInLanguage: 'En');
			deny: (each isInLanguage: 'en-us');
			deny: (each isInLanguage: 'EN-US');
			deny: (each isInLanguage: 'En-Us')].