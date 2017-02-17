private-pragmas
pragmaProperty: aSymbol in: aClass followOpposite: aBoolean

	| aMethod pragma propName propType opposite multi derived |
	
	aMethod := aClass lookupSelector: aSymbol.
	aMethod isCompiledMethod should beTrue.
	pragma := Pragma inMethod: aMethod named: #(#MSEProperty:type:opposite: #MSEProperty:type:).
	pragma isNil ifTrue: [ self error: 'No Fame pragma in ', aSymbol ].
	propName := (pragma argumentAt: 1) asString.
	propType := self resolveFameName: (pragma argumentAt: 2).
	derived := false.
	(Pragma inMethod: aMethod named: #derived) ifNotNil: [ derived := true ].
	multi := false.
	(Pragma inMethod: aMethod named: #multivalued) ifNotNil: [ multi := true ].
	opposite := nil.
	pragma keyword = #MSEProperty:type:opposite:
		ifTrue: [ 
			opposite := pragma argumentAt: 3.
			aBoolean ifTrue: [
				self followOppositeProperty: opposite in: (pragma argumentAt: 2)
				]].
	"(Pragma inMethod: aMethod named: #package:) ifNotNil:
			[ ((Pragma inMethod: aMethod named: #package:) argumentAt: 1) ]."
	"(Pragma inMethod: aMethod named: #container) ifNotNil: [ prop isContainer: true ]."

	"Warning: method with property may be defined in a superclass of aClass.
	 That's why we ensure aClass, but then we create the property in the context of the defining class:
	 this way inherited and opposite properties are well-bound"
	self ensurePragmaClass: aClass while: [].
	self ensurePragmaClass: aMethod methodClass while: [
		self property: propName type: propType opposite: opposite multivalued: multi derived: derived ]