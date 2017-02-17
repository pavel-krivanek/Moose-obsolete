*Famix-Java
implementMethod
	^ self belongsTo implementedInterfaces
		collect: [ :each | each implementationOf: self signature ]