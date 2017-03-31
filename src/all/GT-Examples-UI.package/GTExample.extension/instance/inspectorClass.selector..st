*GT-Examples-UI-PRAGMA-SELECTORS
inspectorClass: aClassOrClassName selector: aSelector
	<gtExamplePragma>
	<description: 'A method, implemented by (aClassOrClassName >> aSelector), providing custom GTInspector-extensions for this particular example'>
	
	self addExtension: (self methodResolverClass resolve: GTExampleMethodInspectorExtension example: self className: aClassOrClassName meta: false selector: aSelector)