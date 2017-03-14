asserting
assertClass: aClassOrClassName meta: aBoolean resolvedAsClass: aClass 
	(GTExampleMethodResolver new 
		methodClassName: aClassOrClassName;
		meta: aBoolean;
		yourself) methodClassDo: [ :class | self assert: class == aClass ] ifNone: [ self assert: aClass isNil ].
	(GTExampleClassResolver new 
		theClassName: aClassOrClassName;
		meta: aBoolean;
		yourself) theClassDo: [ :class | self assert: class == aClass ] ifNone: [ self assert: aClass isNil ]