as yet unclassified
testContent

	context := PPContext new.
	context indentStack push: (PPCompareParser on: [:ctx | ctx column = 1 ]).

	self parse: '
hi
there
' rule: #content.
	self assert: result size = 2.
	self assert: result first = 'hi'.
	self assert: result second = 'there'