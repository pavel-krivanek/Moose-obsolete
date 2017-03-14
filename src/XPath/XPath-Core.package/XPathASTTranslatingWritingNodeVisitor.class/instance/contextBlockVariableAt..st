private
contextBlockVariableAt: anIndex
	^ (contextBlockVariables
		ifNil: [self generateNewContextBlockVariables])
			at: anIndex