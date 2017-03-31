importing
importClassExtension: aClassExtension 
	 
	| method | 
	importingContext shouldImportClassExtension ifTrue: [
		method := self ensureMethod: aClassExtension.
		importingContext shouldImportPackage ifTrue: [
			method parentPackage stub: false ].
 	]