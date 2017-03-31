PRAGMA-SELECTORS
dependsOnAll: aString
	<gtExamplePragma>
	<description: 'This example depends on all given selectors found in the given string (list separated by  .,;). Any dependency will be performed before this example is performed. Order of declaration is important'>
	
	self substrings: aString do: [ :each | 
		self dependsOn: aString ]