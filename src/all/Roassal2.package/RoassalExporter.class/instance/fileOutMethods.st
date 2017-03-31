export
fileOutMethods
	self methods
		do: [:ea |
			(self blacklist includes: ea) 
				ifFalse: [ self fileOutMethod: ea] ]
		displayingProgress: 'Filing out methods...'