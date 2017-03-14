*SmaCC_Rewrite_Engine_UI
changedSearchTo: aSymbol
	| class newMatch |
	class := SmaCCRewriteMatch withAllSubclasses detect: [ :each | each type = aSymbol ].
	self match class == class
		ifTrue: [ ^ self ].
	newMatch := class new.
	self match: newMatch