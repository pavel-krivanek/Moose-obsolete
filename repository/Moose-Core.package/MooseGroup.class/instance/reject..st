public interface
reject: aBlock 
	 
	| resultCollection result | 
	resultCollection := self entities reject: aBlock. 
	result := self species withAll: resultCollection. 
	^result