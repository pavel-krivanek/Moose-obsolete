instance creation
new
	"must use #writeStream instead of 'WriteStream on:' to get a 0-based
	stream on Gemstone"
	^ self on: (String new: 128) writeStream