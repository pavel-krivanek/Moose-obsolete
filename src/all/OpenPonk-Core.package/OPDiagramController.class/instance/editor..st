accessing
editor: anEditor
	self assert: (anEditor isKindOf: OPEditor).
	editor := anEditor