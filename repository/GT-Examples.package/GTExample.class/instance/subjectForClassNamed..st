DEPRECATED
subjectForClassNamed: aClassName
	self deprecated: 'use GTExampleClassResolver instead'.
	^ (self classResolver
		theClassName: aClassName;
		meta: false; " lucky guess "
		yourself) theClassDo: [ :class | class ] ifNone: [ nil ]