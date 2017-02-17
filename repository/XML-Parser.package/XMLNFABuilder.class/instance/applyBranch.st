building
applyBranch
	| branchState leftFragment  rightFragment |

	leftFragment := self popFragment.
	rightFragment := self popFragment.
	branchState :=
		XMLNFABranchingState
			leftBranch: leftFragment firstState
			rightBranch: rightFragment firstState.

	self pushFragment:
		(XMLNFAFragment
			firstState: branchState
			terminalStates: (leftFragment combinedTerminalStatesFrom: rightFragment)).