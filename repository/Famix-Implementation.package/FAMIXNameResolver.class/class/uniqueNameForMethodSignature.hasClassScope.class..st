language independent unique naming
uniqueNameForMethodSignature: aMethodSignature hasClassScope: aBooleanOrNil class: aClassName
	"Given ***FAMIX2 compliant**** names for the elements return a FAMIX2 Compliant uniqueName a SYMBOL"

	^(aClassName , self methodAndVariableSeparator , aMethodSignature)
		asSymbol