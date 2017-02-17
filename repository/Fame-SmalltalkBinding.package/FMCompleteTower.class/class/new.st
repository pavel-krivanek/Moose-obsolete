instance creation
new

	| tower |
	tower := self basicNew.
	tower metaMetamodel: FMMetaRepository fm3.
	tower metamodel: (FMMetaRepository with: tower metaMetamodel).
	tower model: (FMRepository with: tower metamodel).
	^tower