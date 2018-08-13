private - backend access
bindingOf: varName

	| aSymbol | 
	aSymbol := varName asSymbol.

	^ (self innerBindingOf: aSymbol) ifNil: [
		 self environment bindingOf: aSymbol ]