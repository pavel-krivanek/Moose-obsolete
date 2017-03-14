public interface
select: aBlock 
	 
	| resultCollection result | 
	resultCollection := self entities select: aBlock. 
	result := self species withAll: resultCollection. 
	^result