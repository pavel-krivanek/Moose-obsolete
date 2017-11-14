simulation trick
simulateCannotInterpretIn: trickMethodContext
"I am called from special methods which created to support debugging of methods which receiver class was proxified by cannotInterpret: trick"	
	| message selector receiver |
	selector := trickMethodContext method propertyValueAt: #canNotInterpretSelector.	
	message := Message selector: selector arguments: trickMethodContext arguments.
	receiver := trickMethodContext receiver.	
		
	^self intercept: message to: receiver