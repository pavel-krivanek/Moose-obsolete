accessing
invalidEncodedInputCollections
	^ #(
			#(16r00 16r00 16rD8 16r00) "first surrogate code point"
			#(16r00 16r00 16rDB 16rFF) "last surrogate code point"
			#(16r00 16r11 16r00 16r00) "greater than U+10FFFF"
		) collect: [:each | self stringFrom: each]