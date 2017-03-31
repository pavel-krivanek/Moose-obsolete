grammar - if-then-else
ifThenPart
	^ 'then' asParser, space, statementBlock ==> #last
