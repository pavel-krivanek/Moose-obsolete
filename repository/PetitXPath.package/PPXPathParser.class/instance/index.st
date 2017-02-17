accessing
index 
	^super index 
		==>[ :nodes | PPXPathIndexFilter withIndex: nodes ]