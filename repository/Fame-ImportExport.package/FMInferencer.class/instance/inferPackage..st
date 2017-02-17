inferring
inferPackage: aString 
	builder 
		new: 'FM3.Package'
		with: 
			[ builder 
				a: 'name'
				of: aString.
			builder 
				a: 'classes'
				of: [ self inferClasses: aString ] ]