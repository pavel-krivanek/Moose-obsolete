language independent unique naming
uniqueNameForMethodWithSmalltalkSelector: aSymbol hasClassScope: aBooleanOrNil class: aClassName
	"Given ***FAMIX2 compliant**** names for the elements return a FAMIX2 Compliant uniqueName a SYMBOL"

	^self
		uniqueNameForMethodSignature:
			(self signatureFromSmalltalkSelectorOn: aSymbol)
		hasClassScope: aBooleanOrNil
		class: aClassName