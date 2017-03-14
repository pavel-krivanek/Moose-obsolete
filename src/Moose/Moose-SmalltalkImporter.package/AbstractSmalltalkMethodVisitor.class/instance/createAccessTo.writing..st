visitor-double dispatching
createAccessTo: aNamedEntity writing: isWriteAccess
	| access |
	
	access := FAMIXAccess new.
	access isWrite: isWriteAccess ; variable: aNamedEntity ; accessor: self methodEntity.
	^ access