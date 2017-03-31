tests
testHasLanguage
	| attribute |

	attribute := self newNode.
	attribute name: 'xml:lang'.
	self
		deny: (attribute hasLanguage: 'en-us');
		deny: (attribute hasLanguage: 'EN-US');
		deny: (attribute hasLanguage: 'En');
		deny: (attribute hasLanguage: 'de-de');
		deny: (attribute hasLanguage: 'DE-DE');
		deny: (attribute hasLanguage: 'De').

	attribute value: 'En-Us'.
	self
		assert: (attribute hasLanguage: 'en-us');
		assert: (attribute hasLanguage: 'EN-US');
		assert: (attribute hasLanguage: 'En');
		deny: (attribute hasLanguage: 'de-de');
		deny: (attribute hasLanguage: 'DE-DE');
		deny: (attribute hasLanguage: 'De').