converting
asDFAState
	| nfaStates |

	nfaStates := XMLNFAStateSet new.
	self addTo: nfaStates.
	^ nfaStates asDFAState.