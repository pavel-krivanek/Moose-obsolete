private
writeType
	| typeString typeStringSize isEnumeration nameStart |

	self writer space.
	typeString := self type.
	typeStringSize := typeString size.
	isEnumeration := false.
	1 to: typeStringSize do: [:i | | nextChar |
		nextChar := typeString at: i.
		isEnumeration
			ifTrue: [
				nameStart
					ifNil: [
						nextChar isXMLWriterNameStartChar
							ifTrue: [nameStart := i]
							ifFalse: [self writer nextPut: nextChar]]
					ifNotNil: [
						nextChar isXMLWriterNameChar
							ifFalse: [
								self writer writeName:
									(typeString
										copyFrom: nameStart
										to: i - 1).
								nameStart := nil.
								self writer nextPut: nextChar]]]
			ifFalse: [
				isEnumeration := nextChar == $(.
				self writer nextPut: nextChar]].

	nameStart
		ifNotNil: [
			self writer writeName:
				(typeString
					copyFrom: nameStart
					to: typeStringSize)].