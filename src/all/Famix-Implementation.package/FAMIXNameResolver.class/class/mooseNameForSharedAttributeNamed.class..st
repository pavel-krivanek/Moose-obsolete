new naming conventions
mooseNameForSharedAttributeNamed: anAttributeName class: aClassName
	"Given ***FAMIX2 compliant**** names for the elements return a FAMIX2 Compliant uniqueName a SYMBOL"

	  ^(aClassName, self classAttributeSeparator , anAttributeName) asSymbol
		