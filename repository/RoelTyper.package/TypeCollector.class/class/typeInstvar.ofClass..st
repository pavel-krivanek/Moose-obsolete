instance creation
typeInstvar: var ofClass: aClass
	"self typeInstvar: #x ofClass: Point "

	^(self new typeInstvarsOfClass: aClass) at: var