private
addDFAStateTransitionMatching: aMatcher
	| matchingNFAStates totalMatched matchingDFAState |

	self dfaStateTransitions size >= self maxDFAStateTransitions
		ifTrue: [self removeDFAStateTransitions].

	matchingNFAStates := XMLNFAStateSet new.
	totalMatched := 0.
	self nfaStatesDo: [:state |
		(state matches: aMatcher)
			ifTrue: [
				state nextState addTo: matchingNFAStates.
				totalMatched := totalMatched + 1]].

	matchingNFAStates size > 0
		ifTrue: [
			matchingDFAState :=
				dfaStateCache dfaStateForNFAStates: matchingNFAStates.
			totalMatched > 1
				ifTrue: [matchingDFAState hasNonDeterminism: true]].

	^ self dfaStateTransitions
		at: aMatcher
		put: matchingDFAState. "nil if no match"