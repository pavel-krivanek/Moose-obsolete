running
testDocument
	| client m s |
	client := FMMSEPrinter new onString.
	m := FMModelBuilder new client: client.
	m document: [  ].
	s := client stream contents.
	s should = '()'