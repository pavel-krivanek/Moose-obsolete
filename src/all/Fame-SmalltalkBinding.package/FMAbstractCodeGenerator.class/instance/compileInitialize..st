compiling
compileInitialize: attributesString 
	rbClass 
		compile: attributesString expandMacros
		classified: #'initialize-release'.
