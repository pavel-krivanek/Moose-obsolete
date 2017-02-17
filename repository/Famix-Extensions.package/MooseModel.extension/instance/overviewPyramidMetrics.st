*Famix-Extensions
overviewPyramidMetrics

	^ self privateState propertyAt: #overviewPyramidMetrics ifAbsentPut: [OverviewPyramidMetrics on: self]