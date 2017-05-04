accessing
invalidEncodedInputCollections
	"code points greater than U+10FFFF can't be encoded using UTF-16, so
	they aren't tested for here"
	^ #(
			#(16r00 16rDC 16r00 16rDC) "first illegal leading surrogate"
			#(16rFF 16rDF 16r00 16rDC) "last illegal leading surrogate"
			#(16r00 16rD8 16r00 16rD8) "first illegal trailing surrogate"
			#(16r00 16rD8 16rFF 16rDB) "last illegal trailing surrogate"
		) collect: [:each | self stringFrom: each]