wizard panes transition
terminateManualImporting

	| selectedVersions |
	
	selectedVersions := wizardInformations at: #selectedVersions.
	"versions is a dictionary with version name and version fullName"
	hismoImporter versions: (selectedVersions collect: [ :each | each -> (self fullNameForVersion: each)]) asDictionary.
	hismoImporter importAll.
	self createHismoModel