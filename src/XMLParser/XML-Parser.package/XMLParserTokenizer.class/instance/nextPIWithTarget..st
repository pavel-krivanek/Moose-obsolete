tokenizing
nextPIWithTarget: aTarget
	streamReader peek == $?
		ifTrue: [
			streamReader next.
			self expectTerminator.
			driver
				handlePI: aTarget
				data: '']
		ifFalse: [
			self expectSeparators.
			driver
				handlePI: aTarget
				data: self nextPIData].