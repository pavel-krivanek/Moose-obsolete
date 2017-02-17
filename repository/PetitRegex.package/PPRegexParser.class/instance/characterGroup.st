grammar-atoms
characterGroup
	^  $[ asParser , $^ asParser optional, $] asParser optional,  $- asParser optional , characterSet star , $- asParser optional , $] asParser 
	map: [ :open :negate :closeSquareBracket :opend :parsers :closed :close |
		| result |
		result := parsers
			inject: PPChoiceParser new
			into: [ :each :other | each / other ].
		(opend notNil or: [ closed notNil ])
			ifTrue: [ result := $- asParser / result ].
		closeSquareBracket notNil ifTrue: [ result := $] asParser / result ].
		result children size = 1
			ifTrue: [ result := result children first ]. 
		negate isNil
			ifTrue: [ result ]
			ifFalse: [ result negate ] ] 