accessing
imageScripts
	^ { 
	 	MooseZeroConfCurrentImageScript mooseLatestImage.
		MooseZeroConfCurrentImageScript moose50Image.
		MooseZeroConfSuiteImageScript moose49Image 
		"MooseZeroConfImageScript glamour25Image. 
		MooseZeroConfImageScript petitparser16Image"
	}