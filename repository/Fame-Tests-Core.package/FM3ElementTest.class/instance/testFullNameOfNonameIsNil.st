running
testFullNameOfNonameIsNil
	| noname |
	noname := FM3PackageDescription new.
	self shouldnt: [ noname fullName ] raise: Error.
	noname fullName isNil should beTrue