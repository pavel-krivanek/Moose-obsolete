instance creation
with: aVersionEntity inHistory: aHistory withReferenceVersion: aReferenceVersion 
	| classes res wantedTypeName |

	wantedTypeName := (aVersionEntity mooseDescription name , 'Version') asSymbol.
	classes := HismoEntityVersion allSubclasses select: [ :each | ((each name) removePrefix: 'Hismo') asSymbol = wantedTypeName ].
	res := classes size = 1 
		ifFalse: [ HismoEntityVersion new ]
		ifTrue: [ classes asArray first new ].
	^ res initialize
		versionEntity: aVersionEntity;
		history: aHistory;
		referenceVersion: aReferenceVersion;
		yourself