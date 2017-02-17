grammar-classes-enum
enumConstants 

	^ enumConstant , ((self tokenFor: ',') , enumConstant) star