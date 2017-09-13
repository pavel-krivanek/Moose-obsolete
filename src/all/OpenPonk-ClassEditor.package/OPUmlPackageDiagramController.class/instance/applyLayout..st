ui hooks
applyLayout: aThreeArgBlock
	| classes inheritance associations |
	classes := self controllers
		select: [ :ctrl | ctrl isKindOf: OPUmlClassController ]
		thenCollect: #figure.
	inheritance := self controllers
		select: [ :ctrl | 
			(ctrl isKindOf: OPUmlGeneralizationController)
				| (ctrl isKindOf: OPUmlExtensionController) ]
		thenCollect: #figure.
	associations := self controllers
		select: [ :ctrl | ctrl isKindOf: OPUmlAssociationController ]
		thenCollect: #figure.
	aThreeArgBlock value: classes value: inheritance value: associations.
	self view signalUpdate