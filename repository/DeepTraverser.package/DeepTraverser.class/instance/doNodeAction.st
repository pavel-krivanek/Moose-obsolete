private
doNodeAction
	" the current action phase "
	
	" decide whether to apply action on the first/initial nodes (or not) "
	isActionAppliedOnCurrent ifFalse: [ ^ self ].
	
	" handle the action for the current node "
	onNodeAction dtAction: current using: self.
	
	" handle the actions of postponed edge actions related to the current node "
	(edgesToAction removeKey: current ifAbsent: [ #() ]) do: [ :assoc |
		onEdgeAction dtActionfrom: assoc key to: assoc value using: self ]
	