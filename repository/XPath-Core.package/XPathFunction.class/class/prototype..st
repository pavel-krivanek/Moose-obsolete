accessing
prototype: aFunctionPrototype
	"
	self allSubclassesDo: [:each |
		each
			prototype: nil;
			prototype]
	"

	prototype := aFunctionPrototype