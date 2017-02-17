grammar - if-then-else
ifElsePart
	^ 'else' asParser, (blanks, emptyLines), statementBlock
	==> #third