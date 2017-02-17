opcodes-data movement
pushConstant: value
	value class == BlockClosure
		ifTrue:
			[self
				readBlock: value method
				copied: 0]
		ifFalse: [
			blockArgs := value.
			stack addLast: value class]