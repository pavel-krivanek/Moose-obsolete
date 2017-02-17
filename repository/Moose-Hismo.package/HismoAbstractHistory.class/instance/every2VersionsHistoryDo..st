enumerating
every2VersionsHistoryDo: aBlock
	"traverses the history and executes aBlock that takes 1 parameter: the history formed by the previous version and the current version"
	
	| previousVersion currentVersion currentHistory |
	self
		versionsIndexFrom2Do:
			[:i | 
			previousVersion := (self versions at: i - 1) copy.
			currentVersion := (self versions at: i) copy.
			currentHistory := self createEmptyHistory.
			currentHistory
				addLast: previousVersion;
				addLast: currentVersion.
			previousVersion history: currentHistory.
			currentVersion history: currentHistory.
			aBlock value: currentHistory]