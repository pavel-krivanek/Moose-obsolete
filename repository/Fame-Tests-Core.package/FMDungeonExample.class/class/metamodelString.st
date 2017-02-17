as yet unclassified
metamodelString

	| m |
	m := FMMetamodelBuilder new.
	m client: FMMSEPrinter new onString.
	m document: self dungeonScript.
	^m client stream contents.
		