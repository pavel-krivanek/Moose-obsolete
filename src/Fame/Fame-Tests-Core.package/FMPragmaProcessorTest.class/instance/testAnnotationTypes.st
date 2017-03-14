running
testAnnotationTypes
	| repo package class property properties |
	repo := FMMetaRepository fm3.
	package := repo elementNamed: 'FM3'.
	class := repo elementNamed: 'FM3.Element'.
	class isFM3Class should beTrue.
	class superclass should = FM3 object.
	class implementingClass should = FM3Element.
	(class at: 'name') isFM3Property should beTrue.
	(class at: 'name') name should = #name.
	(class at: 'name') mmClass should = class.
	(class at: 'name') owner should = class.
	(class at: 'name') type should = FM3 string.
	(class at: 'name') isContainer should beFalse.
	(class at: 'name') isMultivalued should beFalse.
	(class at: 'name') isComposite should beFalse.
	(class at: 'name') hasOpposite should beFalse.
	class owner should = package.	"We now test properties"
	class := package at: 'Property'.
	class isFM3Class should beTrue.
	class superclass should = (package at: 'Element').
	class implementingClass should = FM3PropertyDescription.
	(class at: 'opposite') isFM3Property should beTrue.
	(class at: 'opposite') name should = #opposite.
	(class at: 'opposite') mmClass should = class.
	(class at: 'opposite') owner should = class.
	(class at: 'opposite') type should = class.
	(class at: 'opposite') isContainer should beFalse.
	(class at: 'opposite') isMultivalued should beFalse.
	(class at: 'opposite') isComposite should beFalse.
	(class at: 'opposite') hasOpposite should beTrue.
	(class at: 'opposite') opposite should = (class at: 'opposite').	"We now test the container property of FM3's properties"
	property := (package at: 'Property') at: 'class'.
	property isContainer should beTrue.
	properties := (package at: 'Property') allAttributes copyWithout: property.
	(properties noneSatisfy: #isContainer) should beTrue.
	properties := (package at: 'Package') allAttributes.
	(properties noneSatisfy: #isContainer) should beTrue.
	property := (package at: 'Class') at: 'package'.
	property isContainer should beTrue.
	properties := (package at: 'Class') allAttributes copyWithout: property.
	(properties noneSatisfy: #isContainer) should beTrue.
