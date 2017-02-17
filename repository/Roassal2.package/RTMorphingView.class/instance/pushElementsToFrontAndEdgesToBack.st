configuration
pushElementsToFrontAndEdgesToBack

	afterAllTranslationsBlocks 
		add: [ :view | view edges do: #pushBack ];
		add: [ :view | view elements do: #pushFront ]
		