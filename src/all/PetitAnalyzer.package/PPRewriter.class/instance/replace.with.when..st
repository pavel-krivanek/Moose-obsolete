accessing
replace: aSearchParser with: aReplaceParser when: aValidationBlock
	self addRule: (PPParserReplaceRule searchFor: aSearchParser replaceWith: aReplaceParser when: aValidationBlock)