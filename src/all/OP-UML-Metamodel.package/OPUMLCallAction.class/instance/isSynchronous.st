accessing
isSynchronous
	"If true, the call is synchronous and the caller waits for completion of the invoked Behavior. If false, the call is asynchronous and the caller proceeds immediately and cannot receive return values."
	^ isSynchronous ifNil: [ isSynchronous := true ]