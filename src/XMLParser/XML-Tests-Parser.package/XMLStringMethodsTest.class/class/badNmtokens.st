accessing
badNmtokens
	^ #('' ' ' '	'), (self badNmtokenChars collect: [:each | 'test' copyWith: each])