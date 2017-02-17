as yet unclassified
methodDef
	^ super methodDef ==> [:tokens | 
		PJMethodDeclarationNode new
			returnType: tokens second first second;
			simpleName: tokens second second second first;
			yourself
	]