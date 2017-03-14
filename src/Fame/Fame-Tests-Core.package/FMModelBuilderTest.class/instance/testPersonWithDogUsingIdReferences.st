running
testPersonWithDogUsingIdReferences
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
					of: [ m ref: 42 ] ].
		m 
			new: #Dog
			with: 
				[ m id: 42.
				m 
					a: #color
					of: 'brown'.
				m 
					an: #age
					of: 5 ] ].
	s := client stream contents.
	s should = '(
	(Person
		(name ''John Doe'')
		(dog (ref: 42)))
	(Dog (id: 42)
		(color ''brown'')
		(age 5)))'