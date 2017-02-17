creating
createHismoModel
	
	"versions is a dictionary with version name and version fullName"
	
	hismoModel := HismoModelHistory new.
	
	self selectedVersions do: [ :aVersion |
		
		| stream mooseModel |
		
		stream := StandardFileStream readOnlyFileNamed: aVersion.
		mooseModel := self createMooseModelFrom: stream.
		mooseModel name: aVersion.
		hismoModel addLastVersionForMooseModel: mooseModel ].
	
	hismoModel name: hismoModelName.
	^ hismoModel