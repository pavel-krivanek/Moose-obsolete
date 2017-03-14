enumerating
every2VersionsDo: aBlock
	"traverses the history and executes aBlock that takes 2 parameters: the previous version and the current version"
	
	| previousVersion currentVersion |
	self
		versionsIndexFrom2Do:
			[:i | 
			previousVersion := self versions at: i - 1.
			currentVersion := self versions at: i.
			aBlock value: previousVersion value: currentVersion]