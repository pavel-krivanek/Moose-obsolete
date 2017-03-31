as yet unclassified
setUp
	model := MooseModel new.
	methodA := FAMIXMethod new signature: 'A'; name: 'A'; mooseModel: model.
	methodB := FAMIXMethod new signature: 'B'; name: 'B'; mooseModel: model.
	methodC := FAMIXMethod new signature: 'C'; name: 'C'; mooseModel: model.
	methodD := FAMIXMethod new signature: 'D'; name: 'D'; mooseModel: model.
	methodNeverInvoked := FAMIXMethod new signature: 'neverInvoked'; name: 'neverInvoked'; mooseModel: model.
	invocation1 := FAMIXInvocation new sender: methodA; addCandidate: methodB; mooseModel: model; signature: 'B'.
	invocation2 := FAMIXInvocation new sender: methodA; addCandidate: methodC; mooseModel: model; signature: 'C'.
	invocation3 := FAMIXInvocation new sender: methodA; addCandidate: methodD; mooseModel: model; signature: 'D'.
	invocation4 := FAMIXInvocation new sender: methodB; addCandidate: methodD; mooseModel: model; signature: 'D'.
	invocation5 := FAMIXInvocation new sender: methodNeverInvoked; addCandidate: methodA; mooseModel: model; signature: 'A'