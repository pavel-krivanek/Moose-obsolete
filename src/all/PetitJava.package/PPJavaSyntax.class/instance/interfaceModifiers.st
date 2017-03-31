grammar-classes-interface
interfaceModifiers

	^ ((self tokenFor: 'abstract')
		/(self tokenFor: 'protected') 
		/(self tokenFor: 'private') 
		/(self tokenFor: 'public') 
		/(self tokenFor: 'static')
		/(self tokenFor: 'strictfp') 
		/annotation) star