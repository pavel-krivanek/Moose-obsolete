accessing
byteOrderMark
	"avoid #asString and #newFrom: for GS portability"
	^ String withAll: (self byteOrderMarkBytes collect: [:each | each asCharacter])