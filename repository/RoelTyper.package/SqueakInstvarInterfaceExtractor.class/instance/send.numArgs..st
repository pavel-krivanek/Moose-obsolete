instruction decoding
send: selector numArgs: na
	
	self nativeSend: selector numArgs: na.
	(stack last = #block and: [blockArgs > 0])ifTrue: [blockTraversal := true]