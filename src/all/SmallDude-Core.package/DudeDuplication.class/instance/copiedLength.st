accessing
copiedLength 
	<MSEProperty: #copiedLength type: #Number>
	<derived>
	<MSEComment: 'The amount of duplicated lines'>
	
	| sig sep copy | 
	self flag: 'terrible code. We should store the signature in dedicated structure, not in a string'.
	sep := $.. 
	sig := signature , '.'. 
	copy := 0. 
	[sig notEmpty ] 
		whileTrue: 
			[| ePos sepPos | 
			ePos := sig indexOf: $E. 
			sepPos := ((sig sliceFrom: ePos + 1) indexOf: sep) + ePos. 
			copy := copy 
				+ 
					(sig 
						sliceFrom: ePos + 1 
						to: sepPos - 1) asNumber. 
			sig := sig sliceFrom: sepPos + 1]. 
	^copy