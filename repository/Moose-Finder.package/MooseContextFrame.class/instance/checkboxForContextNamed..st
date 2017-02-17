utilities
checkboxForContextNamed: aContextName
	^ checkboxes detect: [ :each | each label asString == aContextName ].