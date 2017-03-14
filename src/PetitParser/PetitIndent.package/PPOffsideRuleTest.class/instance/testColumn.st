tests
testColumn
	self assert: column, 'a' asParser parse: 'a' to: #(1 'a').
	self assert: 'a' asParser, column parse: 'a' to: #('a' 2).