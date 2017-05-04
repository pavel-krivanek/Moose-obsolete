accessing
invalidEncodedInputCollections
	"code points greater than U+10FFFF can't be encoded using UTF-16, so
	they aren't tested for here"
	^ #(
			#(16rDC 16r00 16rDC 16r00) "first illegal leading surrogate"
			#(16rDF 16rFF 16rDC 16r00) "last illegal leading surrogate"
			#(16rD8 16r00 16rD8 16r00) "first illegal trailing surrogate"
			#(16rD8 16r00 16rDB 16rFF) "last illegal trailing surrogate"
		) collect: [:each | self stringFrom: each]