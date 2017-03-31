*GT-Examples-UI-PRAGMA-SELECTORS
inspector: aSelector
	<gtExamplePragma>
	<description: 'A method providing a custom GTInspector-extensions for this particular example'>
	
	self addExtension: (self methodResolverClass resolve: GTExampleMethodInspectorExtension example: self selector: aSelector)