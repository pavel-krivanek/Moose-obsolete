accessing
grammarD
	"A highly ambiguous grammar from: Saichaitanya Jampana. Exploring the problem of ambiguity in context-free grammars. Master's thesis, Oklahoma State University, July 2005."

	| grammar |
	grammar := Dictionary new.
	#(S A a B b)			do: [ :each | grammar at: each put: (PPUnresolvedParser named: each) ].

	(grammar at: #a)		def: $a asParser.
	(grammar at: #b)		def: $b asParser.
		
	(grammar at: #S)		def: (grammar at: #A) , (grammar at: #B) / (grammar at: #a).
	(grammar at: #A)		def: (grammar at: #S) , (grammar at: #B) / (grammar at: #b).
	(grammar at: #B)		def: (grammar at: #B) , (grammar at: #A) / (grammar at: #a).
		
	^ grammar