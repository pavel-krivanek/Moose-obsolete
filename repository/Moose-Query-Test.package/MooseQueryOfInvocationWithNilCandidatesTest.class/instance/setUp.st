running
setUp
	| inh method inv |
	class := FAMIXClass new name: 'class'.
	inh := FAMIXInheritance new subclass: class.
	method := FAMIXMethod new name: 'method' ; parentType: class.
	inv := FAMIXInvocation new sender: method.