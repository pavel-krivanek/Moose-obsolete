accessing
currentAction
	^ CurrentAction ifNil: [ CurrentAction := GTExampleNautilusActionButton ]