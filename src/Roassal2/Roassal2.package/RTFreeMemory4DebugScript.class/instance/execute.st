hooks
execute

	Clipboard startUp: true.
	GTPlayBook reset.
	RubEditingState allInstances do: [ :i | i undoManager reset. ].
	CairoBackendCache soleInstance flush
