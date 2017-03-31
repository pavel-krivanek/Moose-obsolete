running
testFullNameOfNonameOwnerIsNil
	| noname child |
	noname := FM3PackageDescription new.
	child := FM3MetaDescription new.
	child package: noname.
	child name: 'Child'.
	self shouldnt: [ child fullName ] raise: Error.
	child fullName isNil should beTrue