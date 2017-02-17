tests-basic
testClassWithoutPackage
	
	| aClassWithoutPackage repo visitor |
	aClassWithoutPackage := FM3MetaDescription new.
	aClassWithoutPackage name: 'AClass'.
	repo := FMMetaRepository with: FMMetaRepository fm3.
	repo add: aClassWithoutPackage.
	
	visitor := FMMetaRepositoryFilter new
		metaRepository: repo;
		classes: {aClassWithoutPackage}.
	self shouldnt: [visitor run ] raise: Error