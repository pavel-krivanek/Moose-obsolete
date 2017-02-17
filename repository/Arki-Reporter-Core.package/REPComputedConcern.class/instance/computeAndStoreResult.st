accessing
computeAndStoreResult
	^ result := [ self computeAndProfileResult ]
		on: Error
		do: [ :error | 
			status := REPConcernErrorStatus new
				errorInstance: error;
				concern: self.
			nil ]