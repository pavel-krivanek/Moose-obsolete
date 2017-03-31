initialize-release
initialize 
	
	super initialize.
	self populateContents: {
	self newGroupboxNamed: 'Commit type' With:
		(self newColumnWith: {
		self newMainDevRadioButton.
		self newBranchDevRadioButton. 
		self newReleaseRadioButton    	
		 })}