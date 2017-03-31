private
processClassMethod: aMethod
	| pragma meta className superclassName superclass pack |
	pragma := Pragma 
		inMethod: aMethod
		named:  #MSEClass:super:.
	pragma isNil ifTrue: [ ^self ].
	className := pragma argumentAt: 1.
	superclassName := pragma argumentAt: 2.

	"the description for the class"
	meta := FM3MetaDescription new halt.
	meta name: className asString.
	superclass := self findFameClass: superclassName.
	superclass isNil ifTrue: [
		^self todo: aMethod kind: #classNotFound ].
	meta superclass: superclass.
	meta setImplementingClass: aMethod methodClass theNonMetaClass.
	(Pragma 
		inMethod: pragma method
		named: #abstract) ifNotNil: [ meta isAbstract: true ].
	(Pragma inMethod: pragma method named: #package:)
		ifNotNil: [
			pack := self findPackage: ((Pragma inMethod: pragma method named: #package:) argumentAt: 1).
			meta package: pack. ].
	metamodel add: meta.
	self processPendingClassTodo