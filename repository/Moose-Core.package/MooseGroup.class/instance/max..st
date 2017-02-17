public interface
max: aSymbolOrBlock 
	 
	^self 
		inject: (aSymbolOrBlock value: self first) 
		into: [:max :each | max max: (aSymbolOrBlock value: each)]