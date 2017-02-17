visiting
visitClassDone: fameClass 
	instVarNames do: [ :symbol | 
		(rbClass whoDefinesInstanceVariable: symbol) isNil 
			ifTrue: [ rbClass addInstanceVariable: symbol ]].
	self compileInitialize: initializeSource contents