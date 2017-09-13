accessing
concurrency
	"Specifies the semantics of concurrent calls to the same passive instance (i.e., an instance originating from a Class with isActive being false). Active instances control access to their own BehavioralFeatures."
	^ concurrency ifNil: [ concurrency := OPUMLCallConcurrencyKind new sequential ]