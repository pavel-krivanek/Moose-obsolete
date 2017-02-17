observation
increment 
	 
	currentStep := currentStep + 1. 
	currentStep - (triggerCount * (currentStep // triggerCount)) = 0 
		ifTrue: 
			[incrTrigger value: self. 
			lastTriggerTime := Time secondClock]