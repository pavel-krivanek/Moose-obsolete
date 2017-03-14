method-classifying
classifyMethodNode: aMethodNode 
	 
	self matchGetter: aMethodNode. 
	self matchSetter: aMethodNode. 
	self matchConstructor: aMethodNode. 
	self matchConstant: aMethodNode