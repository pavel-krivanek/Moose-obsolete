running
testPackageClass
	| package meta |
	package := FM3PackageDescription new.
	meta := FM3MetaDescription new.
	package classes notNil should beTrue.
	package classes isCollection should beTrue.
	meta package isNil should beTrue.
	package classes add: meta.
	package classes size should = 1.
	package classes anyOne should = meta.
	meta package should = package