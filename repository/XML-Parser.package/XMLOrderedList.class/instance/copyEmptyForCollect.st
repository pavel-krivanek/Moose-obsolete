private
copyEmptyForCollect
	"collect: methods return instances of the generic ordered list species class
	because a collect block can return any value, which may not be appropiate to
	store in copies of particular subclasses (like XMLNodeList)"

	^ self species new: self size