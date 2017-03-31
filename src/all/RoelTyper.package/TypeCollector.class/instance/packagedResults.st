accessing
packagedResults
	| results |
	results := IdentityDictionary new.
	instVars size - theClass instVarNames size + 1
		to: instVars size
		do:
			[:index | 
			results
				at: (instVars at: index)
				put: (self typingResults at: index)].
	localTypingResults keysAndValuesDo: [:cm :arr | | prefix prefixTmp|
		prefix := '_',cm selector,'>>'.
		prefixTmp := prefix, 'tmp'.
		1 to: arr size - 1 do: [:i | results at: ( prefixTmp, i printString) put: (arr at: i)].
		results at: (prefix, 'return') put: (arr last).
		 ].
	 
	^results