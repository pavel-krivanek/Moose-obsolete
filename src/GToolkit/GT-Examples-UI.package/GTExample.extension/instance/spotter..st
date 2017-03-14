*GT-Examples-UI-PRAGMA-SELECTORS
spotter: aSelector
	<gtExamplePragma>
	<description: 'A method, implemented by aSelector, providing a custom GTSpotter-extension for this particular example'>
	
	self addExtension: (self methodResolverClass resolve: GTExampleMethodSpotterExtension example: self selector: aSelector)