moose utilities
installImageDescription
	MooseImage current timeStamp: DateAndTime now.
	(self hasOption: 'signature') ifTrue: [ 	
		MooseImage current signature: (self optionAt: 'signature') ]