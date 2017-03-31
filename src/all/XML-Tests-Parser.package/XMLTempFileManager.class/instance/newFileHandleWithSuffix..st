instance creation
newFileHandleWithSuffix: aSuffix
	| fileHandle |

	"This is an obvious race condition and may also leak temp files,
	but it's good enough for tests that are skipped by default.
	(must avoid doWhileTrue: for GS compatibility)"
	[fileHandle isNil
		or: [fileHandle exists]]
		whileTrue: [
			fileHandle :=
				(self newUniqueFileNameWithSuffix: aSuffix) asXMLFileHandle].
	^ fileHandle.