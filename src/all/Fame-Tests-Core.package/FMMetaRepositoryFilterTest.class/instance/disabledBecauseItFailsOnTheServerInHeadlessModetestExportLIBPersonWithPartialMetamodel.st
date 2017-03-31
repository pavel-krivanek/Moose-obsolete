tests-export
disabledBecauseItFailsOnTheServerInHeadlessModetestExportLIBPersonWithPartialMetamodel
	| model entity |
	model := self createLIBModelWithClass: LIBPerson.
	self assert: model elements size equals: 2.
	entity := model selectKindOf: LIBBook.
	self assert: entity size equals: 1.
	self assert: entity first title equals: 'aBook'.
	entity := model selectKindOf: LIBPerson.
	self assert: entity size equals: 1.
	self assert: entity first name equals: 'aPerson'.
	entity := model selectKindOf: LIBLibrary.
	self assert: entity isEmpty