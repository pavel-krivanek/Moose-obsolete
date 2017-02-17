accessing
grammarA
	"Güting, Erwig, Übersetzerbau, Springer (p.63)"

	| grammar |
	grammar := Dictionary new.
	
	" terminals "
	grammar at: #a put: $a asParser.
	grammar at: #b put: $b asParser.
	grammar at: #c put: $c asParser.
	grammar at: #d put: $d asParser.
	grammar at: #e put: nil asParser.
	
	" non terminals "
	grammar at: #B put: (grammar at: #b) / (grammar at: #e).
	grammar at: #A put: (grammar at: #a) / (grammar at: #B).
	grammar at: #S put: (grammar at: #A) , (grammar at: #B) , (grammar at: #c) , (grammar at: #d).
	
	^ grammar	