moosechef-scoping-filtering
packageScope

	| cs |
	cs := self typeScope.
	
	^ (cs isNil) ifTrue: [nil] ifFalse: [cs packageScope]