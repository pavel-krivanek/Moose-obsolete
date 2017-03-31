accessing
selectedVersions
	
	^ selectedVersions ifNil: [ selectedVersions := self selectVersions ]