running
testBookMetamodel
	| or m repo |
	or := FMImporter new repository: (FMMetaRepository with: FMMetaRepository fm3).
	m := FMModelBuilder new client: or.
	m document: [ m new: 'FM3.Class' with: [ m a: #name of: 'Book' ] ].
	repo := or repository asMetarepository.
	repo elements isEmpty should beFalse.
	repo elements size should = 1.
	repo elements anyOne name should = #Book