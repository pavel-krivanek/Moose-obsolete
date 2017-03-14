private
doNodeAction
	" the current action phase "
	
	" decide whether to apply action on the first/initial nodes (or not) "
	isActionAppliedOnCurrent ifFalse: [ ^ self ].
	
	" handle the action for the current node "
	onNodeAction dtAction: current using: self.