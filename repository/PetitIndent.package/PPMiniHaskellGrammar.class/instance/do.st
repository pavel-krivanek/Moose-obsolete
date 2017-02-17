grammar
do
	^ 'do' asParser trim, statementBlock
	==> #second