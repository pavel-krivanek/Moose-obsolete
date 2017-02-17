initialize-release
initialize

	super initialize.
	contextFrame := MooseContextFrame new.
	self populateContents: {self 
		newGroupboxNamed: 'Context' WithAll: { 
				self newRowWith:{
				(self newCentralCheckbox).
				(self newDetailContextButton)}
			 }.}