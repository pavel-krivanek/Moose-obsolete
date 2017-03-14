running
basicRun 
	 
	| importer | 
	importer := importerClass new importingContext: importingContext. 
	self classes 
		do: 
			[:class |  
			importer importClass: class. 
			self increment].
	self classExtensions 
		do: 
			[:ext |  
			importer importClassExtension: ext].  
	^importer