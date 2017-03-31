actions
packagesNeedSavingAsStringForVersion: aString

	|project version dirtyPackages|
	project := self selectedProjectInstance.
	version := project version: aString.
	version ifNotNil: [
		dirtyPackages := project packagesNeedSaving: version versionString.
		dirtyPackages 
			ifEmpty: [
				^ 'None'.
				]
			ifNotEmpty: [
				^ (self stringForPackages: dirtyPackages).
				
				].
		].
	^ 'not computable'
	