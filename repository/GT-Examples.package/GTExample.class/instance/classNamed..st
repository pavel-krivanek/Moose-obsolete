DEPRECATED
classNamed: aClassOrClassName
	self deprecated: 'use GTExampleClassResolver instead'.
	^ (self classResolver
		theClassName: aClassOrClassName;
		meta: false; " lucky guess "
		yourself) theClassDo: [ :class | class ] ifNone: [ nil ]