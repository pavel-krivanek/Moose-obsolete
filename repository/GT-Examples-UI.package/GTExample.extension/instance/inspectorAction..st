*GT-Examples-UI-PRAGMA-SELECTORS
inspectorAction: aSelector
	<gtExamplePragma>
	<description: 'A method providing a custom GTInspector-action for this particular example'>
	
	self addExtension: (self methodResolver resolve: GTExampleMethodInspectorActionExtension example: self selector: aSelector)