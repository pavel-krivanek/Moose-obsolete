basic
stringText
	^ super stringText
	
	==> [:token | 
		 token inputValue
			copyReplaceAll: ''''''
			with: '''' ]