unresolved objects
createNewUnresolvedMetaclassFor: anRGBehavior

	| metaclassStub superclassMetaclass |
	
	metaclassStub := RGMetaclass unresolvedWithParent: self environment.

	superclassMetaclass := anRGBehavior pvtSuperclass pvtMetaclass.
	superclassMetaclass 
		ifNotNil: [ 
			metaclassStub pvtSuperclass: superclassMetaclass.
			metaclassStub pvtMetaclass: superclassMetaclass ]
		ifNil: [ 
			metaclassStub pvtSuperclass: metaclassStub.
			metaclassStub pvtMetaclass: metaclassStub ].
	self environment pvtAddBehavior: metaclassStub.

	^ metaclassStub	
