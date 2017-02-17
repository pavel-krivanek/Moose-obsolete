private
furtherNormalizeAttributeValue: aSemiNormalizedAttributeValue
	"The tokenizer normalizes all non-char escaped whitespace in attribute
	values to spaces (0x20). This further normalizes them by removing leading
	and trailing spaces and turing multiple spaces to single spaces."
	| writeStream isInWhitespace |

	aSemiNormalizedAttributeValue size > 0 "optimization"
		ifFalse: [^ aSemiNormalizedAttributeValue].

	"must use #writeStream instead of 'WriteStream on:' to get a 0-based stream
	on Gemstone"
	writeStream := (String new: aSemiNormalizedAttributeValue size) writeStream.
	isInWhitespace := false.
	"to:do: for speed"
	1 to: aSemiNormalizedAttributeValue size do: [:i | | nextChar |
		(nextChar := aSemiNormalizedAttributeValue at: i) == NormalizedSpace
			ifTrue: [
				isInWhitespace
					ifFalse: [isInWhitespace := true]]
			ifFalse: [
				isInWhitespace
					ifTrue: [
						writeStream position > 0
							ifTrue: [writeStream nextPut: NormalizedSpace].
						isInWhitespace := false].
				writeStream nextPut: nextChar]].
	^ writeStream contents.