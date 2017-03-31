public interface
name
	self referenceVersion ifNil: [ ^ nil ].
	
	^self referenceVersion versionEntity name , ' - '
		, self versionEntity name