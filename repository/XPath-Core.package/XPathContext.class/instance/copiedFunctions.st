private
copiedFunctions
	"used to implement copy-on-write for functions"
	^ functions := self functions copy