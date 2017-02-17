tokens
tTRUE
	"Match 'true' and whitespace"
	$t == char ifTrue: 
		[ $r == self next ifTrue: 
			[ $u == self next ifTrue: 
				[ $e == self next ifTrue: 
					[ self
						next;
						tWHITESPACE.
					^ true ] ] ] ].
	^ false