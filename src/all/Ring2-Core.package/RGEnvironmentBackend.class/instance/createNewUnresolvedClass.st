unresolved objects
createNewUnresolvedClass

	| classStub metaclassStub packageStub |
	
	classStub := RGClass unresolvedWithParent: self environment.
	packageStub := RGPackageDefinition unresolvedWithParent: self environment.
	classStub behaviorStrategy pvtPackage: packageStub.
	packageStub pvtAddDefinedBehavior: classStub.
	metaclassStub := self createNewUnresolvedMetaclassFor: classStub.

	classStub pvtSuperclass: classStub.
	classStub pvtMetaclass: metaclassStub.
	classStub pvtPackage: packageStub.
	packageStub pvtAddDefinedBehavior: classStub.
	self environment pvtAddBehavior: classStub.
	self environment pvtAddPackage: packageStub.

	^ classStub
	

