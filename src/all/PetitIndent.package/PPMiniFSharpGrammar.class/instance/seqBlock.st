seqBlock
seqBlock
	^ 
	seqBlockStart,
		expr,
	seqBlockEnd
	
	==> #second
"	^ spaces, seqBlockOffsideLine, expr, seqBlockOffsideLine pop ==> #third"