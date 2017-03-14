private
hasBinaryOperatorOnStack
	^ (binaryOperatorStack isEmpty
		or: [binaryOperatorStack last == $(]) not