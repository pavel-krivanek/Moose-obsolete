exporting
shouldIgnoreProperty: property withAll: values
	
	^ values isEmpty or: [
		property type == FM3MetaDescription boolean and: [
			values size == 1 and: [ 
				values first == false ]]]