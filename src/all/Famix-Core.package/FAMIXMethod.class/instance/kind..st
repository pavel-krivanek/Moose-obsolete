accessing
kind: aSymbol
	"Set the kind of method, one of #getter #setter ot nil"

	| kindSymbol |
	kindSymbol := aSymbol ifNotNil: [aSymbol asSymbol].
"	[#(nil #setter #getter #constant #constructor)
		includes: kindSymbol] assert."
	^kind := kindSymbol