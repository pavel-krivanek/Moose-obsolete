copying
copy
	"returns a deep copy of the receiver, including copies of any descendant nodes,
	and copies the config"

	^ self shallowCopy postCopy postCopyConfiguration