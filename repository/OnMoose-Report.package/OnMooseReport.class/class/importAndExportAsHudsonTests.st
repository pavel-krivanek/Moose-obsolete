opening
importAndExportAsHudsonTests
	| model |
	model := MooseScripts createModelForConfigurationOfMoose.
	(self on: model) exportAsHudsonTests 