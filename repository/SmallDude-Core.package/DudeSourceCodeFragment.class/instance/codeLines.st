calculation
codeLines 
	self flag: 'we should store the detector in the class side of DudeDetector'.
	^(self entity mooseModel smallDude codeBase at: entity) copyFrom: 
			beginLine to: endLine