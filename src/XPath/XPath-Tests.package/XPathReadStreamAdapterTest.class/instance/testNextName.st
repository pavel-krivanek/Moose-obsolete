tests
testNextName
	| adapter namePosition |

	adapter := self newStreamAdapterOnNCName.
	self
		assert: adapter nextName = self ncName;
		assert: adapter nextName isNil;
		assert: adapter atEnd.

	adapter := self newStreamAdapterOnQualifiedName.
	self
		assert: adapter nextName = self qualifiedName;
		assert: adapter nextName isNil;
		assert: adapter atEnd.

	adapter := self newStreamAdapterOnBadQualifiedName.
	namePosition := adapter position.
	self
		assert: adapter nextName isNil;
		assert: adapter position = namePosition.