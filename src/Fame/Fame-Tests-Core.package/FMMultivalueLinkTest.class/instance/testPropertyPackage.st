running
testPropertyPackage
	| package prop |
	package := FM3PackageDescription new.
	prop := FM3PropertyDescription new.
	package extensions notNil should beTrue.
	package extensions isCollection should beTrue.
	prop package isNil should beTrue.
	prop package: package.
	package extensions size should = 1.
	package extensions anyOne should = prop.
	prop package should = package