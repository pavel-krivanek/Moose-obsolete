grammar-literals-string
classOrInterfaceType 
	self flag: 'NA: temporary hack, should interpret nodes instead of returning first'.
	^ super classOrInterfaceType ==> [ :nodes | nodes first ]
