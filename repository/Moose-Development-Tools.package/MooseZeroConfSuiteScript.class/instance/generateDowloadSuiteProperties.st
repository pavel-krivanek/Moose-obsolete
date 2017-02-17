script generation
generateDowloadSuiteProperties
	self 
		<<== (self suiteProjectName asUppercase , ' DOWNLOAD SUITE PROPERTIES');
		<< 'SUITE_NAME="'; << self suiteProjectName; << '"'; cr;
		<< 'SUITE_FULL_NAME="'; << (self suiteName) ; << '"'; cr;
		<< 'SUITE_DOWNLOAD_ID="'; << self  suiteDownloadArtifact; << '"'; cr; cr