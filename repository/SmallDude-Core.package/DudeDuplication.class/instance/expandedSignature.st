printing
expandedSignature
	| sig xsig sep |
	sep := $..
	sig := signature , '.'.
	xsig := ''.
	[ sig notEmpty ]
		whileTrue: [ 
			| sepPos dType dCount |
			dType := sig at: 1.
			sepPos := sig indexOf: sep.
			dCount := (sig copyFrom: 2 to: sepPos - 1) asNumber.
			1 to: dCount do: [ :index | xsig := xsig , (String with: dType) ].
			sig := sig copyFrom: sepPos + 1 to: sig size ].
	^ xsig