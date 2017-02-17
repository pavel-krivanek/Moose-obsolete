tokens
tREF
	"Matches ref keyword (returns boolean)."
	$r == char ifTrue: 
		[ $e == self next ifTrue: 
			[ $f == self next ifTrue: 
				[ $: == self next ifTrue: 
					[ self
						next;
						tWHITESPACE.
					^ true ] ] ] ].
	^ false