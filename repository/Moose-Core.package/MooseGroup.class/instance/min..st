public interface
min: aSymbolOrBlock 
	 
	^self 
		inject: (aSymbolOrBlock value: self first) 
		into: [:min :each | min min: (aSymbolOrBlock value: each)]