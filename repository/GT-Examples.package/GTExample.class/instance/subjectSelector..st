PRAGMA-SELECTORS
subjectSelector: aSelector
	<gtExamplePragma>
	<description: 'Add a selector subject to the example'>
	
	self addSubject: (GTExampleSelectorSubject fromString: aSelector)