operations - stubs
isAccessibleByStub
	"A Variable is accessible by Actions within its scope (the Activity or StructuredActivityNode that owns it)."
	
	"{OCL} result = (if scope<>null then scope.allOwnedNodes()->includes(a)
else a.containingActivity()=activityScope
endif)"
	
	self notYetImplemented
