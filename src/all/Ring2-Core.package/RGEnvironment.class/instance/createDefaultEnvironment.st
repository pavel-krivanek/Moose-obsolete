as yet unclassified
createDefaultEnvironment

	| protoobject protoobjectClass object objectClass class classClass classDescription classDescriptionClass behavior behaviorClass metaclass metaclassClass kernelPackage |
	
	protoobject := RGClass unresolvedNamed: #'ProtoObject' withParent: self.
	protoobjectClass := RGMetaclass unresolvedNamed: #'ProtoObject class' withParent: self.
	object := RGClass unresolvedNamed: #'Object' withParent: self.
	objectClass := RGMetaclass unresolvedNamed: #'Object class' withParent: self.
	class := RGClass unresolvedNamed: #'Class' withParent: self.
	classClass := RGMetaclass unresolvedNamed: #'Class class' withParent: self.
	classDescription := RGClass unresolvedNamed: #'ClassDescription' withParent: self.
	classDescriptionClass := RGMetaclass unresolvedNamed: #'ClassDescription class' withParent: self.
	behavior := RGClass unresolvedNamed: #'Behavior' withParent: self.
	behaviorClass := RGMetaclass unresolvedNamed: #'Behavior class' withParent: self.
	metaclass := RGClass unresolvedNamed: #'Metaclass' withParent: self.
	metaclassClass := RGMetaclass unresolvedNamed: #'Metaclass class' withParent: self.
	kernelPackage := RGPackageDefinition unresolvedNamed: #'Kernel' withParent: self.
	
	{ protoobject. protoobjectClass. object. objectClass. class. classClass. classDescription. classDescriptionClass. behavior. behaviorClass. metaclass. metaclassClass } do: [ :each |
		kernelPackage pvtAddDefinedBehavior: each.
		self pvtAddBehavior: each.].
	self pvtAddPackage: kernelPackage.
	
	protoobject pvtSuperclass: protoobject.
	protoobject pvtMetaclass: protoobjectClass.
	protoobject behaviorStrategy pvtPackage: kernelPackage.

	protoobjectClass pvtSuperclass: class.
	protoobjectClass pvtMetaclass: metaclass.

	object pvtSuperclass: protoobject.
	object pvtMetaclass: objectClass.
	object behaviorStrategy pvtPackage: kernelPackage.

	objectClass pvtSuperclass: protoobjectClass.
	objectClass pvtMetaclass: metaclass.

	class pvtSuperclass: classDescription.
	class pvtMetaclass: classClass.
	class behaviorStrategy pvtPackage: kernelPackage.

	classClass pvtSuperclass: classDescriptionClass.
	classClass pvtMetaclass: metaclass.

	classDescription pvtSuperclass: behavior.
	classDescription pvtMetaclass: classDescriptionClass.
	classDescription behaviorStrategy pvtPackage: kernelPackage.

	classDescriptionClass pvtSuperclass: behaviorClass.
	classDescriptionClass pvtMetaclass: metaclass.

	behavior pvtSuperclass: object.
	behavior pvtMetaclass: behaviorClass.
	behavior behaviorStrategy pvtPackage: kernelPackage.

	behaviorClass pvtSuperclass: objectClass.
	behaviorClass pvtMetaclass: metaclass.

	metaclass pvtSuperclass: classDescription.
	metaclass pvtMetaclass: metaclassClass.
	metaclass behaviorStrategy pvtPackage: kernelPackage.

	metaclassClass pvtSuperclass: classDescriptionClass.
	metaclassClass pvtMetaclass: metaclass.


		