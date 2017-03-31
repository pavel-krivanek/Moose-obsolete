private
isTitleAKernelException: aString
	^ (#Kernel asPackage classTagNamed: #Exceptions) classes anySatisfy: [ :e | e name == aString asSymbol ]