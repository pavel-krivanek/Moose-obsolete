accessing
sourceLanguage
	^ self declaredSourceLanguage ifNil: [
		self mooseModel 
			ifNil: [ FAMIXUnknownSourceLanguage new ] 
			ifNotNil: [ self mooseModel sourceLanguage ] ]