*SmaCC_Rewrite_Engine_UI
changedReplaceTo: aSymbol
	| class rewrite |
	class := SmaCCRewriteTransformation withAllSubclasses detect: [ :each | each type = aSymbol ].
	self transformation class == class
		ifTrue: [ ^ self ].
	rewrite := class new.
	self transformation: rewrite