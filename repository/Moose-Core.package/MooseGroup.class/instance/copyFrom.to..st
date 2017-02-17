public interface
copyFrom: startIndex to: endIndex 
	| resultCollection result | 
	resultCollection := self entities copyFrom: startIndex to: endIndex.
	result := self species withAll: resultCollection. 
	^ result	