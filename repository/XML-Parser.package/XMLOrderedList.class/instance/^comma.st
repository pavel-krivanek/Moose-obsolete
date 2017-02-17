copying
, aCollection 
	^ self
		copyReplaceFrom: self size + 1
		to: self size
		with: aCollection