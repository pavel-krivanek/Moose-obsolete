examples
testPrintModel
	| m string |
	m := self testSCGLibraryAsModel. 
	string := m exportString.
	string should beginWith: '(
	(LIB.Library (id:'
