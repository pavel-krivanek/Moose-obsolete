opening
importAndOpen
	| model |
	model := MooseScripts createModelForConfigurationOfMoose.
	(self on: model) open