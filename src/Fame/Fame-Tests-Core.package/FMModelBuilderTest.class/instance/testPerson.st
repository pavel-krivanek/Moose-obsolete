running
testPerson
	| client m s |
	client := FMMSEPrinter new onString.
	m := FMModelBuilder new client: client.
	m document: 
		[ m 
			new: #Person
			with: 
				[ m 
					a: #name
					of: 'John Doe' ] ].
	s := client stream contents.
	s should = '(
	(Person
		(name ''John Doe'')))'