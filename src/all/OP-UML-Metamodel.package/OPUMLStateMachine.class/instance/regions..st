accessing
regions: aRegion
	"The Regions owned directly by the StateMachine."
	self regions
		removeAll;
		addAll: aRegion