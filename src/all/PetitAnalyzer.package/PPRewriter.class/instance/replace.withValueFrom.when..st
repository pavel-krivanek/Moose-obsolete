accessing
replace: aSearchParser withValueFrom: aReplaceBlock when: aValidationBlock
	self addRule: (PPBlockReplaceRule searchFor: aSearchParser replaceWith: aReplaceBlock when: aValidationBlock)