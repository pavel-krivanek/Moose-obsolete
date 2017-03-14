encoding extraction
extractMethodSelectorFromMoose: aString
	"returns the first part of a compound string. In Moose the variable name are composed this way"

	"self extractMethodSelectorFromMoose: #'accept:node:()' 'accept:node:'"

	"self extractMethodSelectorFromMoose: #'accept()' 'accept'"

	^aString copyUpTo: $(