grammar
typeParameters 

	^ (self tokenFor: '<') , 
			typeParameter , 
			((self tokenFor: ',') , typeParameter) star , 
		(self tokenFor: '>')