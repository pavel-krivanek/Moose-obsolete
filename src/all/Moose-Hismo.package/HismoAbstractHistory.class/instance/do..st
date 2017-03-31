enumerating
do: aBlock
	"traverses the versions and executes aBlock for each version"
	
	^self versions do: aBlock