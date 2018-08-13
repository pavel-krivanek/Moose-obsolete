*Ring2-Monticello
ring2LayoutType

	^ (Dictionary newFrom: {	
		#compiledMethod -> RGCompiledMethodLayout. 
		#bytes -> RGByteLayout. 
		#immediate -> RGImmediateLayout. 
		#words -> RGWordLayout. 
		#week -> RGWeakLayout.
		#variable -> RGVariableLayout.
		#ephemeron -> RGEphemeronLayout.
		#normal -> RGFixedLayout.
		#weak -> RGWeakLayout.
	}) at: type.		
