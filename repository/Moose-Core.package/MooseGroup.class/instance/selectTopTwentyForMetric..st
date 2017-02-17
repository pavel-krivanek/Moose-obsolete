public interface
selectTopTwentyForMetric: aSymbolOrBlock
	"Return the 20% top most methods for the metric aSymbolOrBlock"

	^ self selectTop: 0.20 forMetric: aSymbolOrBlock