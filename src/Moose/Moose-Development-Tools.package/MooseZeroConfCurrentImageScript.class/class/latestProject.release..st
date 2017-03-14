instance creation
latestProject: aProjectId release: releaseString
	"Create a new zeroconf script exporter for latest version of the given release and project"
	^ self new
		projectId: aProjectId;
		release: releaseString;
		version: 'lastSuccessfulBuild';
		yourself