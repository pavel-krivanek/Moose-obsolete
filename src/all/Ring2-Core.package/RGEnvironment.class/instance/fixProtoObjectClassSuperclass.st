as yet unclassified
fixProtoObjectClassSuperclass

	(self ask classNamed: #'ProtoObject class') superclass: (self ask classNamed: #Class).
