as yet unclassified
setUp
	namespace1 := FAMIXNamespace new.
	namespace2 := FAMIXNamespace new.
	stubNamespace := FAMIXNamespace new.
	class1 := FAMIXClass new.
	stubClass1 := FAMIXClass new isStub: true.
	interface1 := FAMIXClass new isInterface: true.
	stubInterface1 := FAMIXClass new isStub: true; isInterface: true.
	stubPrimitiveType := FAMIXPrimitiveType new isStub: true.
	class1 container: namespace1.
	stubClass1 container: stubNamespace.
	interface1 container: namespace2.
	stubInterface1 container: stubNamespace.
	model := MooseModel new.
	model add: class1.
	model add: stubClass1.
	model add: interface1.
	model add: stubInterface1.
	model add: stubPrimitiveType.
	model add: namespace1.
	model add: namespace2.
	model add: stubNamespace