*GT-Examples-UI-PRAGMA-SELECTORS
spotterClass: aClassOrClassName selector: aSelector
	<gtExamplePragma>
	<description: 'A method, implemented by (aClassOrClassName >> aSelector), providing a custom GTSpotter-extension for this particular example'>
	
	self addExtension: (self methodResolverClass resolve: GTExampleMethodSpotterExtension example: self className: aClassOrClassName meta: false selector: aSelector)