private
defaultVersionNumberFromSource: sourceVersionNumber within: versions commitType: commitType
	"1.2.2 main -> 1.2.3
	 1.2.2 branch -> 1.2.2.1
	 1.2.2.1 branch -> 1.2.2.2
	 1.2.2.1 main -> 1.2.3
	In practice, always get the max minor number + 1"

	| versionBranches prefix lineVersions |
	prefix := self prefixMatching: sourceVersionNumber commitType: commitType.
	lineVersions := (versions reject: [:v| v blessing = #baseline ]) select: [:version| version versionNumber match: prefix ].
	^ lineVersions
			ifEmpty: [ sourceVersionNumber , '.1' ]
			ifNotEmpty: [ (lineVersions detectMax: [ :version | version ]) versionNumber copy incrementMinorVersionNumber printString ]
