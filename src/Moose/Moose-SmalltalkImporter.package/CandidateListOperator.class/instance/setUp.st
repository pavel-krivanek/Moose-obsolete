running
setUp 
	
	"dont call 'model allMethods' here because it sorts the group and we dont care at this level"
	groups := ((model allWithType: FAMIXMethod) reject: #isAbstract) asOrderedCollection groupedBy: #signature