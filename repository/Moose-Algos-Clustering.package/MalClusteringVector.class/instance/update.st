private
update
	
	min := MalUnlimited positive.
	1
		to: self size
		do:
			[:tmpIndex | 
			(self at: tmpIndex) < min
				ifTrue:
					[min := self at: tmpIndex.
					found := tmpIndex]]