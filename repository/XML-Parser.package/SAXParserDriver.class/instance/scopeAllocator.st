accessing
scopeAllocator
	^ scopeAllocator ifNil: [scopeAllocator := XMLNamespaceScopeAllocator new]