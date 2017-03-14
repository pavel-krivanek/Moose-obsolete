accessing
thePackage: anObject
	anObject ifNotNil: [ self thePackageName: anObject packageName ].
	thePackage := anObject