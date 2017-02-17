running
testFullNameIsString
	(tower metaMetamodel elementNamed: 'FM3') fullName isString should beTrue.
	(tower metaMetamodel elementNamed: 'FM3.Property') fullName isString should beTrue.
	(tower metaMetamodel elementNamed: 'FM3.Property.opposite') fullName isString should beTrue