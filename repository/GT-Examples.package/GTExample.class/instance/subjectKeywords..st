PRAGMA-SELECTORS
subjectKeywords: anArrayOrString
	<gtExamplePragma>
	<description: 'Add multiple keywords to the example'>
	
	anArrayOrString gtExampleSubstrings do: [ :each |
		self subjectKeyword: each ]