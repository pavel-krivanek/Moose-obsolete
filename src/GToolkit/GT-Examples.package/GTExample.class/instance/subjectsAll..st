PRAGMA-SELECTORS
subjectsAll: aString
	<gtExamplePragma>
	<description: 'Add multiple class-subjects (list separated by  .,;) to the example'>
	
	self substrings: aString do: [ :each | 
		self subject: each ]