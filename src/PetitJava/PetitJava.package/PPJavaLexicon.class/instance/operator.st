grammar-operators
operator
		| operatorParsers |
		
		operatorParsers := operators keys asSortedCollection collect: [:eachKey | operators at: eachKey ].                                                
		^self asToken:  (operatorParsers reduce: [ :a :b | a / b ])

	"Modified: / 21-04-2015 / 15:26:21 / Jan Vrany <jan.vrany@fit.cvut.cz>"