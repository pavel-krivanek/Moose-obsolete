token
binaryToken
	^ super binaryToken
		==> [ :token | 
			(RBBinarySelectorToken value: token inputValue start: token start)
				comments: token comments;
				yourself ]