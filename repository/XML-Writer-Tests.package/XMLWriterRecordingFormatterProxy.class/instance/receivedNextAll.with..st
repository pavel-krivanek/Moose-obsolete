testing
receivedNextAll: aNameCollection with: anArgument
	aNameCollection do: [:each | | message |
		(messageQueue notEmpty
			and: [(message := messageQueue first) selector == each asSymbol
				and: [message arguments asArray = (Array with: anArgument)]])
			ifFalse: [^ false].
		messageQueue removeFirst].
	^ true.