running
testBookstore2
	| repo package class attribute objectMetaDescription tower |
	tower := FMTower new.
	repo := tower metamodel.
	tower metamodel importString: FMMSEParserTest sampleMetaMse.
	package := repo at: 'LIB'.
	package isFM3Package should beTrue.
	class := package classNamed: 'Book'.
	class isFM3Class should beTrue.	"The superclass of Book should be Object"
	objectMetaDescription := class superclass.
	objectMetaDescription notNil should beTrue.
	objectMetaDescription name should = #Object.
	attribute := class at: 'authors'.
	attribute isFM3Property should beTrue.
	attribute name should = #authors.
	attribute isMultivalued should = true.
	attribute isContainer should = false.
	attribute isDerived should = false.	"self assert: (attribute package == package)."
	FM3 note:
			'Maybe we should rename package to extensionPackage, and make package be derived from [ package or class package ].'.
	attribute mmClass should = class.
	attribute type should = (package classNamed: 'Person').
	attribute opposite notNil should beTrue