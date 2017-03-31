accessing
decodedByteString
	"avoid ASCII null for GS compatibility"
	^ self stringFrom: #(16r01 16r0F 16r10 16rFF)