PRAGMA-SELECTORS
subjectKeyword: aStringOrSymbol
	<gtExamplePragma>
	<description: 'Add a keyword to the example'>
	
	self addSubject: (GTExampleKeywordSubject fromString: aStringOrSymbol)