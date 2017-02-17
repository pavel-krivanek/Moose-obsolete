examples
testPrintMetamodel
	| mm string |
	mm := self testPragmasAsMetamodel.
	string := mm exportString.
	string should beginWith: '(
	(FM3.Package (id: 1)
		(name ''LIB'')'
