DEPRECATED
classNamed: aClassOrClassName
	self deprecated: 'use GTExampleClassResolver instead'.
	^ (self classResolverClass
		theClassName: aClassOrClassName;
		meta: false; " lucky guess "
		yourself) theClassDo: [ :class | class ] ifNone: [ nil ]