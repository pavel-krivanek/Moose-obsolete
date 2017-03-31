building
applyPlus
	| plusFragment branchState |

	plusFragment := self topFragment.
	branchState := XMLNFABranchingState branch: plusFragment firstState.
	plusFragment
		connectToState: branchState;
		terminalState: branchState.