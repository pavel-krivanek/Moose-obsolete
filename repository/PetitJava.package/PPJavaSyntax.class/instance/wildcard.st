grammar-classes
wildcard 

	^ (self tokenFor: '?') ,
		(	((self tokenFor: 'extends')/(self tokenFor: 'super')), 
			type 
		) optional