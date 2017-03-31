*GT-Examples-UI-PRAGMA-SELECTORS
inspectorActionClass: aClassOrClassName selector: aSelector
	<gtExamplePragma>
	<description: 'A method, implemented by (aClassOrClassName >> aSelector), providing a custom GTInspector-actions for this particular example'>
	
	self addExtension: (self methodResolverClass resolve: GTExampleMethodInspectorActionExtension example: self className: aClassOrClassName meta: false selector: aSelector)