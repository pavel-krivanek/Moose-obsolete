as yet unclassified
modelMSE

	^'((HNK.Beer (id: 1)
			(name ''Heineken'')
			(alcvol 5)
			(price 0.6)
			(vol 0.5)
			(instock 1000))
		(HNK.Order (id: 2)
			(item (ref: 1))
			(amount 6)
			(date ''2008-08-25 11:45'')
			(customer (ref: 4)))
		(HNK.Order (id: 3)
			(item (ref: 1))
			(amount 12)
			(date ''2008-08-17 18:30'')
			(customer (ref: 4)))
		(HNK.Customer (id: 4)
			(name ''Joe Example'')
			(address ''Levittown''))	
	)'.