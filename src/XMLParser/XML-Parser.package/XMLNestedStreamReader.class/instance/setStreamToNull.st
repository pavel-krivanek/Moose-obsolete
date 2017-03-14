private
setStreamToNull
	stream := NullReadStream.
	whenPoppedDo := nil.
	"do not reset the other stream properties, including position
	and line number, so error messages will be accurate"