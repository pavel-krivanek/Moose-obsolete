versions
versionsThatChangedPropertyNamed: aProperty
	
	^(self select: [:each | each changedPropertyNamed: aProperty])
		collect: [:each | each]