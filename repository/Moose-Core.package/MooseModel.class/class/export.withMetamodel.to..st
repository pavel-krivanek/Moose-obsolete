import-export
export: aModel withMetamodel: aMetamodel to: aStream 
	| tower repository |
	tower := FMCompleteTower new.
	tower metaMetamodel: aMetamodel metamodel.
	tower metamodel: aMetamodel.
	tower model: (repository := (FMRepository with: aMetamodel) addAll: aModel entities).
	tower model exportOn: aStream