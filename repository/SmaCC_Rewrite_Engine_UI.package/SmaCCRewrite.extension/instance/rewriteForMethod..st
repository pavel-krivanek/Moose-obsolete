*SmaCC_Rewrite_Engine_UI
rewriteForMethod: aMethod
	(match method == aMethod or: [ transformation method == aMethod ])
		ifTrue: [ ^ self ].
	^ nil