instance creation
newFileHandleDo: aBlock
	^ self
		newFileHandleWithSuffix: self fileSuffix
		do: aBlock