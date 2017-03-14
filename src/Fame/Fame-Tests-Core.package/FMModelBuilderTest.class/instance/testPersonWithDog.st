running
testPersonWithDog
	| client m s |
	client := FMMSEPrinter new onString.
	m := FMModelBuilder new client: client.
	m document: 
		[ m 
			new: #Person
			with: 
				[ m 
					a: #name
					of: 'John Doe'.
				m 
					a: #dog
					of: 
						[ m 
							new: #Dog
							with: 
								[ m 
									a: #color
									of: 'brown'.
								m 
									an: #age
									of: 5 ] ] ] ].
	s := client stream contents.
	s should = '(
	(Person
		(name ''John Doe'')
		(dog
			(Dog
				(color ''brown'')
				(age 5)))))'