running
testResolving
	| or m |
	or := FMImporter new repository: (FMMetaRepository with: FMMetaRepository fm3).
	m := FMModelBuilder new client: or.
	m document: [ m new: 'FM3.Class' with: [ m a: #name of: 'MyName' ] ].
	or repository elements isEmpty should beFalse.
	or repository elements size should = 1.
	or repository elements anyOne isFM3Class should beTrue