*SmaCC_Rewrite_Engine_UI
rewriteForMethod: aMethod
	rewrites do: [ :each | (each rewriteForMethod: aMethod) ifNotNil: [ :rewrite | ^ rewrite ] ].
	^ nil