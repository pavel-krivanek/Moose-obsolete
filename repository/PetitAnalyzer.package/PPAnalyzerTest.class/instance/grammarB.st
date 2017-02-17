accessing
grammarB
	"The canonical grammar to exercise first- and follow-set calculation, probably originally from the dragon-book."

	| grammar |
	grammar := Dictionary new.
	#(E Ep T Tp F) 		do: [ :each | grammar at: each put: (PPUnresolvedParser named: each) ].
		
	(grammar at: #E)		def: (grammar at: #T) , (grammar at: #Ep).
	(grammar at: #Ep)	def: ($+ asParser , (grammar at: #T) , (grammar at: #Ep)) optional.
	
	(grammar at: #T)		def: (grammar at: #F) , (grammar at: #Tp).
	(grammar at: #Tp)	def: ($* asParser , (grammar at: #F) , (grammar at: #Tp)) optional.
	
	(grammar at: #F)		def: ($( asParser , (grammar at: #E) , $) asParser) / $i asParser.
			
	#(E Ep T Tp F) 		do: [ :each | (grammar at: each) name: each ].
	
	^ grammar