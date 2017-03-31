tokens
tID
	"Match id keyword (returns boolean)."
	$i == char ifTrue: 
		[ $d == self next ifTrue: 
			[ $: == self next ifTrue: 
				[ self
					next;
					tWHITESPACE.
				^ true ] ] ].
	^ false