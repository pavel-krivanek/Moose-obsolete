PRAGMA-SELECTORS
dependsOnClass: aClassOrClassName selector: aSelector
	<gtExamplePragma>
	<description: 'This example depends on the example declared by the given class and selector. Any dependency will be performed before this example is performed. Order of declaration is important'>
	
	children add: (self methodResolverClass resolve: GTExampleMethod example: self className: aClassOrClassName meta: false selector: aSelector)