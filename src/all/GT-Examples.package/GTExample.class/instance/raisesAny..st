PRAGMA-SELECTORS
raisesAny: aString
	<gtExamplePragma>
	<description: 'This example is expected to raise any of the given exceptions (list separated by  .,;). The example (as a test) will fail if none of the exceptions is raised.'>
	
	self substrings: aString do: [ :each | 
		self raises: each ]