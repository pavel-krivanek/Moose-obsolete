DEPRECATED
classNamed: aClassName do: aBlock1 ifNone: aBlock2
	self deprecated: 'use GTExampleClassResolver instead'.
	(self classResolverClass
		theClassName: aClassName;
		meta: false; " lucky guess "
		yourself) theClassDo: aBlock1 ifNone: aBlock2