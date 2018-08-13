as yet unclassified
ensureMetaclassTraitNamed: aSymbol

	| found newTrait newMetaclassTrait similarMetaclass similarMetaclassName siblingName sibling originalMetaclass  |
	
	self assert: (aSymbol endsWith: ' class') not.
	self assert: (aSymbol endsWith: ' classTrait').

	found := self ask behaviorNamedExactlyAs: aSymbol.
	(found notNil and: [ found isMetaclassTrait ]) ifTrue: [ ^ found ].		

	^ found 
		ifNil: [ 
			"trait not found, check if the environment contains already a correspoinding trait"
			siblingName := (aSymbol withoutSuffix: ' classTrait') asSymbol.
			sibling := self ask behaviorNamedExactlyAs: siblingName.
			sibling 
				ifNotNil: [ 
					"resolve and return existing corresponding trait"
					| existing |
					sibling isTrait
						ifTrue: [ 
							existing := sibling classTrait.
							existing name: aSymbol.
							existing propertyNamed: #resolved put: true.
							existing ]
						ifFalse: [ 
							sibling convertToTrait.
							sibling classSide convertToMetaclassTrait.
							"sibling metaclass becomeForward: newMetaclassTrait.
							originalMetaclass becomeForward: newMetaclassTrait.
							sibling becomeForward: newTrait."
							"sibling classTrait: newMetaclassTrait.
							newMetaclassTrait baseTrait: sibling.
							"
							sibling classSide name: (siblingName, ' classTrait') asSymbol.
							sibling classSide propertyNamed: #resolved put: true.
							sibling classSide
							]]
				ifNil: [ 
					similarMetaclassName := ((aSymbol withoutSuffix: ' classTrait'), ' class') asSymbol.
					similarMetaclass := self ask behaviorNamed: similarMetaclassName.	
					similarMetaclass 
						ifNotNil: [
							"environment already contains metaclass of the similar name. It was probably 
							created because correct type was not known. Convert it to classTrait"
							| similarClass |
							similarClass := similarMetaclass baseClass.
							newMetaclassTrait := similarMetaclass behaviorStrategy pvtAsMetaclassTrait.
							newTrait := similarClass convertToTrait.
							"similarMetaclass becomeForward: newMetaclassTrait.
							similarClass becomeForward: newTrait."
							newTrait classTrait: newMetaclassTrait.
							newMetaclassTrait baseTrait: newTrait.
							newTrait name: siblingName asSymbol.
							newMetaclassTrait ]
						ifNil: [ 
							"we need to create new behavior"
							| newBehavior |
							newBehavior := RGMetaclassTrait named: aSymbol parent: self.
							self addBehavior: newBehavior.
							newBehavior ] ] ]
		ifNotNil: [
			"some non-trait behavior found. We created this trait before as a class because correct behavior type was not known."
			newTrait := found convertToTrait.
			originalMetaclass := found metaclass.
			newMetaclassTrait := originalMetaclass pvtAsMetaclassTrait.
			self ask replaceName: originalMetaclass name with: newMetaclassTrait name.
			"found becomeForward: newTrait.
			found metaclass becomeForward: newMetaclassTrait.
			originalMetaclass becomeForward: newMetaclassTrait."
			found ].
	
				
