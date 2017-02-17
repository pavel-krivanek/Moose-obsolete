initialization
signedNumber  
	^super signedNumber ==> [ :token | 
		(token first isNil or: [token first = $+])
			ifTrue: [Array with: token second asNumber]
			ifFalse: [Array with: (token first asString , token second asString ) asNumber]
		]