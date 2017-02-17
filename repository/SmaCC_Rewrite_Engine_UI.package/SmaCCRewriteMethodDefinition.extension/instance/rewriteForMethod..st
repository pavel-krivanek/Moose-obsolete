*SmaCC_Rewrite_Engine_UI
rewriteForMethod: aMethod
	aMethod == self method
		ifTrue: [ ^ self ].
	^ nil