*Moose-Finder
mooseInterestingEntity 
	"For a group with one element,  it returns that element, instead of the group, useful in the finder to remove extra step when navigating"
	
	"-- interestingEntity is called before UI actions, hence we optimize for runtime --" 
	
	self flag: 'The entity storage should not be changed here, but in the loader or somewhere else'.
	self entityStorage forRuntime. 
	^ self