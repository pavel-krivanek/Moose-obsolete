invoking
function
	| sourceString searchString replacementString replacementMap writeStream |

	sourceString := self argumentAt: 1.
	searchString := self argumentAt: 2.
	replacementString := self argumentAt: 3.
	replacementMap := Dictionary new.
	1 to: searchString size do: [:i |
		replacementMap
			at: (searchString at: i)
			ifAbsentPut: [
				replacementString
					at: i
					ifAbsent: [nil]]].

	writeStream := (String new: sourceString size) writeStream.
	sourceString do: [:each |	
		(replacementMap
			at: each
			ifAbsent: [each])
				ifNotNil: [:nextChar |
					writeStream nextPut: nextChar]].
	^ writeStream contents.