tests
testFixProtoObjectClassSuperclass

	| env protoObject class | 
	
	env := RGEnvironment new.
	protoObject := env ensureClassNamed: 'ProtoObject'.
	class := env ensureClassNamed: 'Class'.

	self deny: (protoObject classSide superclass = class).
	env fixProtoObjectClassSuperclass.
	self assert: (protoObject classSide superclass = class).