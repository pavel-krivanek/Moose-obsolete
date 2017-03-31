private-pragmas
ensurePragmaSuperclass: aSuperclassName

	| stClass |
	(aSuperclassName = #Object or: [ aSuperclassName = 'Object' ])
		ifTrue: [ ^ #Object ]. "stop lookup"
	"Assume that aSuperclassName follows Fame convention"
	stClass := self class environment at: (aSuperclassName copyReplaceAll: '.' with: '') asSymbol.
	self ensurePragmaClass: stClass while: [].
	^ stClass