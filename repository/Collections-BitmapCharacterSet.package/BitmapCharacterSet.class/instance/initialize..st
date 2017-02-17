initialization
initialize: aCapacity
	byteCharacters := Array new: 256 withAll: false.
	aCapacity > 256
		ifTrue: [
			"(257 - 1) // 8 - 31 = 1 (first byte),
			(257 + 8 - 1) // 8 - 31 = 2 (second byte), etc
			(with 'bitShift: -3' used over '// 8' for speed)"
			self growWideCharacterBitmapTo: ((aCapacity - 1) bitShift: -3) - 31].
	tally := 0.