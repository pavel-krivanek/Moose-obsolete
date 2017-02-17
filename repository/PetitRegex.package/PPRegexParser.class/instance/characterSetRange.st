grammar-characters
characterSetRange
	^ [ :stream | stream position ] asParser , #any asParser , $- asParser , $] asParser negate map: [ :pos :start :sep :stop | 
		start < stop
			ifTrue: [ PPPredicateObjectParser between: start and: stop ]
			ifFalse: [ PPFailure message: 'Invalid character range: ' , (String with: start with: $- with: stop) context: nil at: pos ] ]