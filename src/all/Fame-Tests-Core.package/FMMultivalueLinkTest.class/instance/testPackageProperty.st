running
testPackageProperty
	| package prop |
	package := FM3PackageDescription new.
	prop := FM3PropertyDescription new.
	package extensions notNil should beTrue.
	package extensions isCollection should beTrue.
	prop package isNil should beTrue.
	package extensions add: prop.
	package extensions size should = 1.
	package extensions anyOne should = prop.
	prop package should = package