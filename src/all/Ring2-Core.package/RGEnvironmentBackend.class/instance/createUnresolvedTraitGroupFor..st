unresolved objects
createUnresolvedTraitGroupFor: anRGBehavior 

	| traitStub classTraitStub traitMetaclassStub classTraitMetaclassStub packageStub1  |

	traitStub := anRGBehavior isMeta
		ifFalse: [ anRGBehavior ]
		ifTrue: [ RGTrait unresolvedWithParent: self environment ].
	traitStub propertyNamed: #creator put: anRGBehavior.
	traitStub propertyNamed: #role put: #trait.
		
	classTraitStub := anRGBehavior isMeta
		ifFalse: [ RGMetaclassTrait unresolvedWithParent: self environment ]
		ifTrue: [ anRGBehavior ].
	classTraitStub propertyNamed: #creator put: anRGBehavior.
	classTraitStub propertyNamed: #role put: #classTrait.

	"Trait"
	traitMetaclassStub := RGClass unresolvedWithParent: self environment.
	self createUnresolvedClassGroupFor: traitMetaclassStub.
	traitMetaclassStub propertyNamed: #creator put: anRGBehavior.
	traitMetaclassStub propertyNamed: #role put: #traitMetaclass.
	
	"ClassTrait"
	classTraitMetaclassStub := RGClass unresolvedWithParent: self environment.
	self createUnresolvedClassGroupFor: classTraitMetaclassStub.
	classTraitMetaclassStub propertyNamed: #creator put: anRGBehavior.
	classTraitMetaclassStub propertyNamed: #role put: #classTraitMetaclass.

	packageStub1 := RGPackageDefinition unresolvedWithParent: self environment.
	packageStub1 propertyNamed: #creator put: anRGBehavior.
	packageStub1 propertyNamed: #role put: #traitMetaclassPackage.

	traitStub behaviorStrategy pvtPackage: packageStub1.
	packageStub1 pvtAddDefinedBehavior: traitStub.
	traitStub pvtSuperclass: traitStub.
	traitStub pvtMetaclass: traitMetaclassStub.
	traitStub behaviorStrategy pvtClassTrait: classTraitStub.

	classTraitStub pvtSuperclass: classTraitStub.
	classTraitStub pvtMetaclass: classTraitMetaclassStub.
	classTraitStub behaviorStrategy pvtBaseTrait: traitStub.
	
	self environment pvtAddBehavior: traitStub.		
	self environment pvtAddBehavior: classTraitStub.	
	self environment pvtAddBehavior: traitMetaclassStub.
	self environment pvtAddBehavior: classTraitMetaclassStub.
	self environment pvtAddPackage: packageStub1.

	^ 	anRGBehavior isMeta
		ifFalse: [ traitStub ]
		ifTrue: [ classTraitStub ].
