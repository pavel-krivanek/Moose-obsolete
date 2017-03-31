public
browserEnvironment
	| environment |
	environment := RBSelectorEnvironment new.
	self examplesDo: [ :className :selector :example |
		environment addClass: example methodClass selector: example selector ].
	^ environment