private
processInstanceMethod: aMethod
	| pragma prop class type opposite pack |
	pragma := Pragma 
		inMethod: aMethod
		named: #(#MSEProperty:type:opposite: #MSEProperty:type: ).
	pragma isNil ifTrue: [ ^ self ].

	prop := FM3PropertyDescription new.
	prop name: (pragma argumentAt: 1) asString.
	class := self findFameClass: (aMethod methodClass).
	class isNil ifTrue: [
		^todoClass add: aMethod ].
	type := self findFameClass: (pragma argumentAt: 2).
	type isNil ifTrue: [
		^todoClass add: aMethod ].
	prop type: type.
	prop mmClass: class.
	prop setImplementingSelector: aMethod selector.
	pragma keyword = #MSEProperty:type:opposite: ifTrue: [
		opposite := self findOpposite: (pragma argumentAt: 3).
		opposite isNil ifTrue: [
			self todo: aMethod kind: #oppositeNotFound ]].
	(Pragma 
		inMethod: aMethod
		named: #package:) ifNotNil: [ 
			pack := self ensurePackage: ((Pragma 
				inMethod: aMethod
				named: #package:) argumentAt: 1).
			prop package: pack ].	
	(Pragma 
		inMethod: aMethod
		named: #container) ifNotNil: [ prop isContainer: true ].
	(Pragma 
		inMethod: aMethod
		named: #derived) ifNotNil: [ prop isDerived: true ].
	(Pragma 
		inMethod: aMethod
		named: #multivalued) ifNotNil: [ prop isMultivalued: true ].
	(Pragma 
		inMethod: aMethod
		named: #key:) ifNotNil: 
		[ prop key: ((Pragma 
				inMethod: aMethod
				named: #key:) argumentAt: 1) ].
	"-----"
	metamodel add: prop.
	self processPendingTodos: #oppositeNotFound.
