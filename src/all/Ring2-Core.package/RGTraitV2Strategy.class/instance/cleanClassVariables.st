private - backend access
cleanClassVariables

	self owner announceDefinitionChangeDuring: [ 
		self backend forBehavior cleanClassVariablesFor: self owner ].