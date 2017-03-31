as yet unclassified
if
	^ 'if' asParser trim, expr, 'then' asParser trim, expr, if_ElseBranch optional