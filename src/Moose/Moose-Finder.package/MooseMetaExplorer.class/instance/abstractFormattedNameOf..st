fame
abstractFormattedNameOf: each
	^ each isAbstract 
		ifTrue: [ Text string: each fullName attribute: TextEmphasis italic ]
		ifFalse: [ Text fromString: each fullName ]