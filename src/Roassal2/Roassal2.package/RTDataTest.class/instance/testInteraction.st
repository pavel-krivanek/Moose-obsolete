tests
testInteraction

	| ds |
	ds := RTData new.
	self assert: ds interaction class equals: RTDataInteractionBuilder