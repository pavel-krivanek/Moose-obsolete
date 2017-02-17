running
testFamixModel
	| repo names famixPackage accessClass accessorProperty behaviouralEntity outgoingAccesses |
	repo := FMTower new metamodel.
	repo importString: self class famix30mse.
	names := repo elements collect: [ :each | each fullName ].
	names size should = 70.
	names should include: 'FAMIX.Access'.
	names should include: 'FAMIX.Method'.
	names should include: 'FAMIX.NamedEntity.belongsTo'.
	names should include: 'FAMIX.Class'.
	names should include: 'FAMIX'.
	names should include: 'FAMIX.Entity.sourceAnchor'.
	names should include: 'FAMIX.Access.accessor'.
	names should include: 'FAMIX.Type.methods'.
	names should include: 'FAMIX.Package.childNamedEntities'.
	names should include: 'FAMIX.Type.attributes'.
	names should include: 'FAMIX.Attribute.parentClass'.
	names should include: 'FAMIX.GlobalVariable'.
	names should include: 'FAMIX.ScopingEntity.parentNamespace'.
	names should include: 'FAMIX.Type'.
	names should include: 'FAMIX.Parameter'.
	names should include: 'FAMIX.Access.isRead'.
	names should include: 'FAMIX.Attribute'.
	names should include: 'FAMIX.ContainerEntity.incomingReferences'.
	names should include: 'FAMIX.Method.parentClass'.
	names should include: 'FAMIX.BehaviouralEntity'.
	names should include: 'FAMIX.BehaviouralEntity.incomingInvocations'.
	names should include: 'FAMIX.StructuralEntity'.
	names should include: 'FAMIX.Access.isWrite'.
	names should include: 'FAMIX.Invocation.sender'.
	names should include: 'FAMIX.ScopingEntity.globalVariables'.
	names should include: 'FAMIX.ContainerEntity'.
	names should include: 'FAMIX.ScopingEntity'.	"self assert: (names includes: 'FAMIX.Invocation.above')."
	names should include: 'FAMIX.Association'.
	names should include: 'FAMIX.StructuralEntity.declaredType'.
	names should include: 'FAMIX.Invocation.receiver'.
	names should include: 'FAMIX.Package'.
	names should include: 'FAMIX.ScopingEntity.childNamespaces'.
	names should include: 'FAMIX.Entity'.
	names should include: 'FAMIX.Reference.from'.
	names should include: 'FAMIX.ContainerEntity.outgoingReferences'.
	names should include: 'FAMIX.BehaviouralEntity.localVariables'.
	names should include: 'FAMIX.Invocation.candidates'.
	names should include: 'FAMIX.Invocation.receiverSourceCode'.
	names should include: 'FAMIX.NamedEntity.name'.
	names should include: 'FAMIX.NamedEntity.receivingInvocations'.
	names should include: 'FAMIX.StructuralEntity.incomingAccesses'.
	names should include: 'FAMIX.LeafEntity'.
	names should include: 'FAMIX.Class.isAbstract'.
	names should include: 'FAMIX.BehaviouralEntity.signature'.
	names should include: 'FAMIX.Inheritance.subclass'.
	names should include: 'FAMIX.Reference'.
	names should include: 'FAMIX.BehaviouralEntity.outgoingInvocations'.
	names should include: 'FAMIX.Access.variable'.
	names should include: 'FAMIX.LocalVariable.parentBehaviouralEntity'.
	names should include: 'FAMIX.LocalVariable'.
	names should include: 'FAMIX.BehaviouralEntity.outgoingAccesses'.
	names should include: 'FAMIX.Inheritance'.
	names should include: 'FAMIX.Parameter.parentBehaviouralEntity'.	"... and tons more ... "
	famixPackage := repo at: 'FAMIX'.
	famixPackage isFM3Package should beTrue.
	accessClass := famixPackage classNamed: 'Access'.
	accessClass isFM3Class should beTrue.
	accessorProperty := accessClass attributeNamed: 'accessor'.
	accessorProperty isFM3Property should beTrue.
	accessorProperty name should = #accessor.
	accessorProperty opposite notNil should beTrue.
	behaviouralEntity := famixPackage classNamed: 'BehaviouralEntity'.
	behaviouralEntity isFM3Class should beTrue.
	outgoingAccesses := behaviouralEntity attributeNamed: 'outgoingAccesses'.
	outgoingAccesses isFM3Property should beTrue.
	accessorProperty opposite should = outgoingAccesses