accesing
packages
	"
	self new packages
	"
	| tags nopkgs |
	nopkgs := {
		'Trachel-MorphSpecific'.
		 'Roassal2-OpenStreetMap'. 'Roassal2-MorphSpecific'. 'Roassal2-Plugins'. 'Roassal2-ExporterVW' }.
	
	tags := {'Roassal2'. 'Trachel'} flatCollect: [ :n | | pkg |
		pkg := RPackageOrganizer default packageNamed: n.
		pkg classTags.	 ].
	
	^ tags reject: [ :e | (nopkgs includes: e packageName,'-', e name) ].