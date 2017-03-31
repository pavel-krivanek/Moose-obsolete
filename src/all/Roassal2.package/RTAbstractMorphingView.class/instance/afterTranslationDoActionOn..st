utility
afterTranslationDoActionOn: aView

	afterAllTranslationsBlocks do: [ :action | action rtValue: aView ].
	aView signalUpdate.