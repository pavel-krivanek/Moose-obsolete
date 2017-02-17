PRAGMA-SELECTORS
dependsOn: aSelector
	<gtExamplePragma>
	<description: 'This example depends on the example declared by the given selector. Any dependency will be performed before this example is performed. Order of declaration is important'>
	
	self addChild: (self methodResolver resolve: GTExampleMethod example: self selector: aSelector)