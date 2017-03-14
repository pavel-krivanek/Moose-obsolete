tests
testIntervalFromStartLineStartColumnToEndLineEndColumn
	| string |
	string := '123
56
89'.
	self assert: (string intervalFromStartLine: 1 startColumn: 1 toEndLine: 1 endColumn: 2) = (1 to: 2).
	self assert: (string intervalFromStartLine: 2 startColumn: 2 toEndLine: 3 endColumn: 2) = (6 to: 9)