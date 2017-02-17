instance creation
newFileHandleWithSuffix: aSuffix do: aBlock
	| fileHandle |

	"This is an obvious race condition and may also leak temp files,
	but it's good enough for tests that are skipped by default."
	fileHandle := self newFileHandleWithSuffix: aSuffix.
	[aBlock value: fileHandle]
		ensure: [
			fileHandle exists
				ifTrue: [fileHandle delete]]