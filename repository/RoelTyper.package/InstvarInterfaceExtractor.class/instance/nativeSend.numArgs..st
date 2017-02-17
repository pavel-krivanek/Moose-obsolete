opcodes-control
nativeSend: selector numArgs: na 
	| receiver args |
	args := stack removeLast: na.
	receiver := stack removeLast.
	receiver isInteger 
		ifTrue: 
			[ collector 
				addSend: selector
				to: receiver ]
		ifFalse: 
			[ receiver isVariableBinding ifTrue: 
				[ receiver key = #temp 
					ifTrue: 
						[ collector 
							addSend: selector
							toTmp: receiver value ]
					ifFalse: 
						[ receiver key = #return ifTrue: 
							[ collector 
								addSend: selector
								onReturnOfSelfMethod: receiver value ] ] ] ].
	(receiver = #self and: [ collector theClass methodDict includesKey: selector ]) ifTrue: 
		[ args doWithIndex: 
			[ :arg :index | 
			collector 
				handleAssignment: arg
				forTmp: index - 1
				in: collector theClass >> selector ] ].
	stack add: (collector 
			pushSendOf: selector
			to: receiver
			args: args)