PRAGMA-SELECTORS
iconSelector: aSelector
	<gtExamplePragma>
	<description: 'Attach an icon to this example. The selector must return an icon form'>
	
	form := (self methodResolverClass resolve: GTExampleMethodIcon example: self selector: aSelector)
		converter: #convertFromByteArray:;
		yourself