*SmaCC_Rewrite_Engine_UI
matchTypes
	^ (SmaCCRewriteMatch allSubclasses collect: [ :each | each type ])
		asSet asSortedCollection