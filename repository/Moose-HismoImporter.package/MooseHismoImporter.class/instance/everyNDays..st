strategies
everyNDays: nDays

	^ self importingStrategy: (MooseHismoDayStrategy new days: nDays)