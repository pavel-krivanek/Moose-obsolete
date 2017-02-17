private
handleBOM: aByteOrderMark forConverterClass: aConverterClass ifUnmatched: aBlock
	"to:do: for speed"
	1 to: aByteOrderMark size do: [:i |
		self peek = (aByteOrderMark at: i)
			ifFalse: [
				^ aBlock value: (aByteOrderMark copyFrom: 1 to: i - 1)].
		self next].

	^ aConverterClass new.