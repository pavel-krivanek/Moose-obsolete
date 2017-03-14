encoding extraction
extractMooseClassSymbolFrom: aString
	"returns the class name of a Moose  variable name"

	"self extractMooseClassSymbolFrom: #'LanInterface.super'"

	"self extractMooseClassSymbolFrom: #'LanInterface.self'"

	"self extractMooseClassSymbolFrom: #'LanInterface.self.dddd'"

	^aString classPart