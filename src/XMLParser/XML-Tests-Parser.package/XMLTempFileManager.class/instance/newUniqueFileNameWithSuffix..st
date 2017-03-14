instance creation
newUniqueFileNameWithSuffix: aSuffix
	| uniqueFileName oldSize |

	"Try to come up with a unique file name.
	This is good enough for tests that are skipped by default.
	(must avoid doWhileTrue: for GS compatibility)"
	[uniqueFileName isNil
		or: [
			oldSize := self uniqueFileNames size.
			(self uniqueFileNames
				add: uniqueFileName;
				size) = oldSize]]
		whileTrue: [
			uniqueFileName :=
				'XMLTempFile{1}-{2}{3}' format:
					(Array
						with: self identityHash asString
						with: (0 to: 100000) atRandom asString
						with: aSuffix)].
	^ uniqueFileName.