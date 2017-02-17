configuration
pushAllElementsToFront

	afterAllTranslationsBlocks add: [ :view | 
		view elements do: #pushFront
	]