*Moose-RoassalPaintings-Support
accessorMethodsGroup
	<navigation: 'Accessor methods'>
	
	^ FAMIXMethodGroup 	withAll: (self accessorMethods)
							withDescription: 'Pure accessors in ', self name