private - utilities
checkboxForContextNamed: aContextName
	^ allCheckboxes detect: [ :each | each label asString == aContextName ].