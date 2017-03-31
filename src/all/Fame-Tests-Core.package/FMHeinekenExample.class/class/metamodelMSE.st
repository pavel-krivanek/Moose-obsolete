as yet unclassified
metamodelMSE

	^'((FM3.Package 
		(name ''HNK'')
		(classes
			(FM3.Class (id: 3)
				(name ''Beer'')
				(attributes
					(FM3.Property
						(name ''name'')
						(type (ref: String)))
					(FM3.Property
						(name ''alcvol'')
						(type (ref: Number)))
					(FM3.Property
						(name ''price'')
						(type (ref: Number)))
					(FM3.Property
						(name ''instock'')
						(type (ref: Number)))
					(FM3.Property
						(name ''vol'')
						(type (ref: Number)))
					))
			(FM3.Class (id: 2)
				(name ''Customer'')
				(attributes
					(FM3.Property
						(name ''name'')
						(type (ref: String)))
					(FM3.Property
						(name ''address'')
						(type (ref: String)))
					(FM3.Property (id: 22)
						(name ''orders'')
						(multivalued true)
						(opposite (ref: 11))
						(type (ref: 1)))
					))
			(FM3.Class (id: 1)
				(name ''Order'')
				(attributes
					(FM3.Property
						(name ''date'')
						(type (ref: String)))
					(FM3.Property
						(name ''amount'')
						(type (ref: Number)))
					(FM3.Property (id: 11)
						(name ''customer'')
						(opposite (ref: 22))
						(type (ref: 2)))
					(FM3.Property
						(name ''item'')
						(type (ref: 3)))
					))
	)))'.