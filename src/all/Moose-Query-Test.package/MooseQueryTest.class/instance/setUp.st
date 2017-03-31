running
setUp
	model := MooseModel new.
	package1 := FAMIXPackage new name: 'package1' ; mooseModel: model.
	package2 := FAMIXPackage new name: 'package2' ; mooseModel: model.
	namespace := FAMIXNamespace new name: 'Smalltalk' ; mooseModel: model.
	class1 := FAMIXClass new name: 'class1' ; parentPackage: package1 ; container: namespace ; mooseModel: model.
	class2 := FAMIXClass new name: 'class2' ; parentPackage: package2 ; mooseModel: model.
	inh := FAMIXInheritance new subclass: class1 ; superclass: class2 ; mooseModel: model.
	method1 := FAMIXMethod new name: 'method1' ; parentType: class1 ; mooseModel: model.
	method2 := FAMIXMethod new name: 'method2' ; parentType: class2 ; mooseModel: model.
	method3 := FAMIXMethod new name: 'method3' ; parentType: class2 ; mooseModel: model.
	methodExt := FAMIXMethod new name: 'methodExt' ; parentType: class2 ; parentPackage: package1 ; mooseModel: model.
	var1 := FAMIXAttribute new name: 'var1' ; parentType: class2 ; declaredType: class1 ; mooseModel: model.
	var2 := FAMIXAttribute new name: 'var2' ; parentType: class2 ; mooseModel: model.
	var3 := FAMIXLocalVariable new name: 'var3' ; parentBehaviouralEntity: method2 ; declaredType: class1 ; mooseModel: model.
	access := FAMIXAccess new accessor: method1 ; variable: var2 ; mooseModel: model.
	acc1 := FAMIXAccess new accessor: method2 ; variable: var1 ; mooseModel: model.
	inv1 := FAMIXInvocation new sender: method1 ; addCandidate: method2 ; receiver: var2 ; mooseModel: model.
	inv2 := FAMIXInvocation new sender: method2 ; addCandidate: method2 ; receiver: var2 ; mooseModel: model.
	inv3 := FAMIXInvocation new sender: method3 ; addCandidate: method2 ; receiver: var2 ; mooseModel: model.
	ref1 := FAMIXReference new source: method1 ; target: class2 ; mooseModel: model.