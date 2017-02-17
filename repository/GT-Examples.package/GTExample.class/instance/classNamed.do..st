DEPRECATED
classNamed: aClassName do: aBlock
	self deprecated: 'use GTExampleClassResolver instead'.
	^ (self classResolver
		theClassName: aClassName;
		meta: false; " lucky guess "
		yourself) theClassDo: aBlock