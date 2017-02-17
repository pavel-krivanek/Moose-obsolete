examples
testMetamodelSmalltalkBinding
	| mm b p lib |
	mm := self testPragmasAsMetamodel.
	mm elements anyOne should beKindOf: FM3Element.
	mm packages anyOne isFM3Package should beTrue.
	mm classes anyOne isFM3Class should beTrue.
	mm properties anyOne isFM3Property should beTrue.
	b := mm elementNamed: 'LIB.Book'.
	b notNil should beTrue.
	b should beKindOf: FM3MetaDescription.
	b name should = #Book.
	b package name should = #LIB.
	b attributes size should = 2.
	b implementingClass should = LIBBook.
	p := mm elementNamed: 'LIB.Person'.
	p notNil should beTrue.
	p should beKindOf: FM3MetaDescription.
	p name should = #Person.
	p package name should = #LIB.
	p attributes size should = 2.
	p implementingClass should = LIBPerson.
	lib := mm elementNamed: 'LIB.Library'.
	lib notNil should beTrue.
	lib should beKindOf: FM3MetaDescription.
	lib name should = #Library.
	lib package name should = #LIB.
	lib attributes size should = 2.
	lib implementingClass should = LIBLibrary.
	b package should = lib package.
	p package should = lib package.
	^ mm