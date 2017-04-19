private
writeContentModel
	| contentModelString contentModelStringSize isEnumeration nameStart isNonElementName |

	self writer space.
	contentModelString := self contentModel.
	contentModelStringSize := contentModelString size.
	isEnumeration := false.
	1 to: contentModelStringSize do: [:i | | nextChar |
		nextChar := contentModelString at: i.
		isEnumeration
			ifTrue: [
				nameStart
					ifNil: [
						nextChar isXMLWriterNameStartChar
							ifTrue: [
								nameStart := i.
								isNonElementName := (contentModelString at: i - 1) == $#]
							ifFalse: [self writer nextPut: nextChar]]
					ifNotNil: [
						nextChar isXMLWriterNameChar
							ifFalse: [
								self
									writeContentModelName:
										(contentModelString
											copyFrom: nameStart
											to: i - 1)
									isNonElementName: isNonElementName.
								nameStart := nil.
								self writer nextPut:  nextChar]]]
			ifFalse: [
				isEnumeration := nextChar == $(.
				self writer nextPut: nextChar]].

	nameStart
		ifNotNil: [
			self
				writeContentModelName:
					(contentModelString
						copyFrom: nameStart
						to: contentModelStringSize)
				isNonElementName: isNonElementName].