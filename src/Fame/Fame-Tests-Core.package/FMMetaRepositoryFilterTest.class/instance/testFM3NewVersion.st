tests-metarepository
testFM3NewVersion
	"The current implementation of FameSystem does not provide a scope for its repository"

	| repo names visitor repoFM3 |
	
	repoFM3 := FMMetaRepository fm3.
	visitor := FMMetaRepositoryFilter new
		metaRepository: repoFM3;
		classes: repoFM3 classes.
	visitor run.
	repo := visitor newMetaRepository.

	names := repo elements collect: [ :each | each fullName ].	"The package"
	names should include: 'FM3'.	"The superclass of everything"	"name, fullName, and owner are the 3 properties that define an element"
	names should include: 'FM3.Element'.
	names should include: 'FM3.Element.name'.
	names should include: 'FM3.Element.fullName'.
	names should include: 'FM3.Element.owner'.
	names should include: 'FM3.Class'.
	names should include: 'FM3.Class.abstract'.
	names should include: 'FM3.Class.primitive'.
	names should include: 'FM3.Class.root'.
	names should include: 'FM3.Class.superclass'.
	names should include: 'FM3.Class.subclasses'.
	names should include: 'FM3.Class.package'.
	names should include: 'FM3.Class.allAttributes'.
	names should include: 'FM3.Class.attributes'.
	names should include: 'FM3.Property'.
	names should include: 'FM3.Property.composite'.
	names should include: 'FM3.Property.container'.
	names should include: 'FM3.Property.derived'.
	names should include: 'FM3.Property.multivalued'.
	names should include: 'FM3.Property.class'.
	names should include: 'FM3.Property.package'.
	names should include: 'FM3.Property.type'.
	names should include: 'FM3.Property.opposite'.
	names should include: 'FM3.Package'.
	names should include: 'FM3.Package.extensions'.
	names should include: 'FM3.Package.classes'.
	(names select: [ :n | n beginsWith: 'FM3' ]) size should = 26