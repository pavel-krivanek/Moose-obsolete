new naming conventions
mooseNameForAttributeNamed: anAttributeName class: aClassName classSide: aBoolean
	"Given ***FAMIX2 compliant**** names for the elements return a FAMIX2 Compliant uniqueName a SYMBOL"

	 aBoolean 
		ifTrue: [^(aClassName, self metaclassTag , self classAttributeSeparator , anAttributeName) asSymbol]
		ifFalse: [^(aClassName , self classAttributeSeparator , anAttributeName) asSymbol]