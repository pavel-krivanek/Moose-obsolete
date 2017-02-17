examples
straightLineParser
	| goal stm stmList id char dec exp expList mulExp primExp nonzero num lower upper |
	goal := PPUnresolvedParser new.
	stmList := PPUnresolvedParser new.
	stm := PPUnresolvedParser new.
	exp := PPUnresolvedParser new.
	expList := PPUnresolvedParser new.
	mulExp := PPUnresolvedParser new.
	primExp := PPUnresolvedParser new.
	
	lower := ($a to: $z) asParser.
	upper := ($A to: $Z) asParser.
	char := lower / upper.
	nonzero := ($1 to: $9) asParser.
	dec := ($0 to: $9) asParser.
	id := char, ( char / dec ) star.
	num := $0 asParser / ( nonzero, dec star).

	goal def: stmList end.
	stmList def: stm , ( $; asParser, stm ) star.
	stm def: ( id, ':=' asParser, exp )
		/ ( 'print' asParser, $( asParser, expList, $) asParser ). 
	exp def: mulExp, ( ( $+ asParser / $- asParser ), mulExp ) star.
	expList def: exp, ( $, asParser, exp ) star.
	mulExp def: primExp, ( ( $* asParser / $/ asParser ), primExp ) star.
	primExp def: id
		/ num
		/ ( $( asParser, stmList, $, asParser, exp, $) asParser ).
	^ goal
