accessing
suiteUrl

	^ self isOneClick 
		ifFalse: [ self fileBaseUrl asString, '${SUITE_NAME}/' , self suiteDownloadArtifact , '-${OS}.zip'  ] 
		ifTrue: [ self fileBaseUrl asString, '${SUITE_NAME}/' , self suiteDownloadArtifact , '.zip' ]
