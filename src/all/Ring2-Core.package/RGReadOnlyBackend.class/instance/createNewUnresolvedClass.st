unresolved objects
createNewUnresolvedClass

	self readOnlyError 
"	| unresolvedValue |
	
	unresolvedValue := RGUnresolvedValue new.
	unresolvedValue default: unresolvedValue.
	^ unresolvedValue."
