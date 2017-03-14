tests
testNextNCName
	| adapter |

	adapter := self newStreamAdapterOnNCName.
	self
		assert: adapter nextNCName = self ncName;
		assert: adapter nextNCName isNil;
		assert: adapter atEnd.

	adapter := self newStreamAdapterOnQualifiedName.
	self
		assert: adapter nextNCName = self prefix;
		assert: adapter nextNCName isNil;
		assert: adapter next == $:.

	adapter := self newStreamAdapterOnBadQualifiedName.
	self
		assert: adapter nextNCName = self prefix;
		assert: adapter nextNCName isNil;
		assert: adapter next == $:.