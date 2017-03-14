accessing
selectedVersions
	"versions is a dictionary with version name and version fullName"

	^ importingStrategy 
		versions: versions; 
		datePattern: datePattern;
		selectedVersions