running
testPersonWithNicknames
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
					a: #nick
					of: #('Joe' 'hack3r' 'dowey' ) ] ].
	s := client stream contents.
	s should = '(
	(Person
		(name ''John Doe'')
		(nick ''Joe'' ''hack3r'' ''dowey'')))'