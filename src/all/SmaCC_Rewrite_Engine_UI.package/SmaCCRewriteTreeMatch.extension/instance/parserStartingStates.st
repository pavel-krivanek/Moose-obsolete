*SmaCC_Rewrite_Engine_UI
parserStartingStates
	^ ((self parserClass class allSelectors select: [ :each | each beginsWith: 'startingStateFor' ])
		collect: [ :each | each asString copyFrom: 17 to: each size ]) asSortedCollection