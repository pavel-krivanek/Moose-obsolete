browse-dynamic
browseInputOn: aBrowser
	aBrowser text
		useExplicitNotNil;
		display: [ :class :selector | input ];
		selectionPopulate: #selection on: $s entitled: 'Parse (s)' with: [ :presentation |
			input := presentation text asString.
			stream := PPBrowserStream on: input.
			output := self production end 
				parse: stream.
			output isPetitFailure
				ifTrue: [ presentation selectionInterval: (output position + 1 to: output position) ].
			output ]