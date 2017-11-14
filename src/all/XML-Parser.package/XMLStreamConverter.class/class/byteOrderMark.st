accessing
byteOrderMark
	"avoid #asString and #newFrom: for GS portability"
	^ String withAll: (self basicByteOrderMarkBytes collect: [:each | each asCharacter])