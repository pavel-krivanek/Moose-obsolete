running
testClassPackage
	| package meta |
	package := FM3PackageDescription new.
	meta := FM3MetaDescription new.
	package classes notNil should beTrue.
	package classes isCollection should beTrue.
	meta package isNil should beTrue.
	meta package: package.
	package classes size should = 1.
	package classes anyOne should = meta.
	meta package should = package