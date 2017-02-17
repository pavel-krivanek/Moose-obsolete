naming conventions
smalltalkClassFromFamixClassName: aFAMIXName ifAbsent: aBlock
	"Given the FAMIX2 name for a class (for a meta class or not): return 
	that Smalltalk class."

	| stName isMeta newName res |
	stName := self smalltalkClassNameFromFamixClassName: aFAMIXName.
	isMeta := '*' , self stMetaclassTag match: stName.
	newName := isMeta 
		ifTrue: [stName copyFrom: 1 to: stName size - self stMetaclassTag size]
		ifFalse: [stName].
	res := self findClassNamedOrNilFromFullName: newName.
	^res isNil
		ifTrue: [aBlock value]
		ifFalse: [isMeta ifTrue: [res class] ifFalse: [res]]