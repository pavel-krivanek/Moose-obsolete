private
ensurePackage: aString

	^ packageDict at: aString ifAbsentPut: [ Dictionary new ]