grammar-classes-method
parseMethod: aString 
	^ self parseMethod: aString onError: [ :msg :pos | self error: msg ]