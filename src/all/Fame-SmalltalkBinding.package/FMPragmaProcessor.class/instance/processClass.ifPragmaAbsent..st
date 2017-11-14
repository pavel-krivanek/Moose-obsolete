private
processClass: aClass ifPragmaAbsent: anErrorBlock
	| pragma meta className superclassName |
	pragma := Pragma allNamed: #MSEClass:super: in: aClass class.
	pragma ifEmpty: anErrorBlock.
	pragma
		ifEmpty: [ className := aClass name.
			superclassName := aClass superclass name ]
		ifNotEmpty: [ className := pragma first argumentAt: 1.
			superclassName := pragma first argumentAt: 2 ].


	"the description for the class"
	meta := FM3MetaDescription new.
	meta name: className asString.
	meta setImplementingClass: aClass.
	pragma
		ifNotEmpty: [ (Pragma inMethod: pragma first method named: #abstract)
				ifNotNil: [ meta isAbstract: true ].
			(Pragma inMethod: pragma first method named: #package:)
				ifNotNil: [ :p | 
					| packageName |
					packageName := p argumentAt: 1.
					(self allowPackageNamed: packageName)
						ifFalse: [ ^ self ].
					packMetaDict at: meta put: packageName asString ] ].
	superclassDict at: meta put: superclassName.
	elements add: meta.
	classDict at: aClass put: meta.
	aClass methods do: [ :each | self processCompiledMethod: each ].
	meta isFM3Class should beTrue.
	^ meta