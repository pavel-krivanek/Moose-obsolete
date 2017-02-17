tests-export
disabledBecauseItFailsOnTheServerInHeadlessModetestExportLIBLibraryWithPartialMetamodel
	| model entity |
	model := self createLIBModelWithClass: LIBLibrary.
	self assert: model elements size equals: 3.
	entity := model selectKindOf: LIBBook.
	self assert: entity size equals: 1.
	self assert: entity first title equals: 'aBook'.
	entity := model selectKindOf: LIBPerson.
	self assert: entity size equals: 1.
	self assert: entity first name equals: 'aPerson'.
	entity := model selectKindOf: LIBLibrary.
	self assert: entity size equals: 1