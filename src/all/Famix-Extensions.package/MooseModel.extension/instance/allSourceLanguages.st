*Famix-Extensions
allSourceLanguages
	| result |
	result := MooseGroup new.
	FAMIXSourceLanguage
		withAllSubclassesDo: [ :each | result addAll: (self allWithType: each) ].
	^ result