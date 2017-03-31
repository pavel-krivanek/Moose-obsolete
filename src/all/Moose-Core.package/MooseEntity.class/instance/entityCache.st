groups
entityCache 
	 
	"should be used read only, i.e. you are not supposed to modify the returned groups.
	If you want to change entityGroups, use privateState 'set' methods"
	^self privateState entityCache