examples-expecting-collections
shouldEqualIgnoringOrder
	'Hi Niko' should equalIgnoringOrder: 'iH ikoN'.
	'Hi Niko' should not equalIgnoringOrder: 'Hi Niko2'.
	'Hi Niko' should not equalIgnoringOrder: 'Hi Niko '. "Trailing space."