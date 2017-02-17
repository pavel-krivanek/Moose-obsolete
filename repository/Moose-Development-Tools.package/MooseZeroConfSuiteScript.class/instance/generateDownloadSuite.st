script generation
generateDownloadSuite
	self 
		<<== ('DOWNLOAD  ', self suiteName asUppercase)
		<< 'SUITE_URL="' << self suiteUrl << '"
SUITE_ARCHIVE="' << 'suite.zip' <<'"
		

echoerr "Downloading  ${SUITE_FULL_NAME}:"
echoerr "	$SUITE_URL"


$DOWNLOAD_TO$SUITE_ARCHIVE $SUITE_URL

unzip -q $SUITE_ARCHIVE -d .
rm -rf $SUITE_ARCHIVE
'; cr