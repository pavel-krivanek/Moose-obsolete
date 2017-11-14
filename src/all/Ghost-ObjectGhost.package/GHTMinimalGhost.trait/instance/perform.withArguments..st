message performing
perform: selector withArguments: argArray 
	
	^self ghostBehaviour intercept: (Message selector: selector arguments: argArray) to: self