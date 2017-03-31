accessing
fontMetrics
	^ TRPlatform current fontMetricsClass new
		font: self font;
		yourself