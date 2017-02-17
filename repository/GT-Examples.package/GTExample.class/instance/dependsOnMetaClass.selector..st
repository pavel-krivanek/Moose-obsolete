PRAGMA-SELECTORS
dependsOnMetaClass: aClassOrClassName selector: aSelector
	<gtExamplePragma>
	<description: 'This example depends on the example declared by the given class and selector. Any dependency will be performed before this example is performed. Order of declaration is important'>
	
	children add: (self methodResolver resolve: GTExampleMethod example: self className: aClassOrClassName meta: true selector: aSelector)