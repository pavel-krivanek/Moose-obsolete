initialize-release
initialize

	super initialize.
	builder := StandardWindow new.
	dialogWindow :=  PluggableDialogWindow new beResizeable; yourself.
	dialogWindow contentMorph: (dialogWindow newColumn: {   }).