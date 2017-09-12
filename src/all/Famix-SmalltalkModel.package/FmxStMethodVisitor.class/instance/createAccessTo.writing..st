visitor-double dispatching
createAccessTo: aNamedEntity writing: isWriteAccess
	| access |
	
	access := FmxStAccess new.
	access isWrite: isWriteAccess ; variable: aNamedEntity ; accessor: self methodEntity.
	^ access