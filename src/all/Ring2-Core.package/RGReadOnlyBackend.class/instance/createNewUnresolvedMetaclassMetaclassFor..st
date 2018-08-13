unresolved objects
createNewUnresolvedMetaclassMetaclassFor: anRGBehavior

	self readOnlyError 
	"| unresolvedValue |
	
	unresolvedValue := RGUnresolvedValue new.
	unresolvedValue default: unresolvedValue.
	^ unresolvedValue."