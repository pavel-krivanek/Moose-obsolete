tokens
tFALSE
	"Matches false keyword (returns boolean)."
	$f == char ifTrue: 
		[ $a == self next ifTrue: 
			[ $l == self next ifTrue: 
				[ $s == self next ifTrue: 
					[ $e == self next ifTrue: 
						[ self
							next;
							tWHITESPACE.
						^ true ] ] ] ] ].
	^ false