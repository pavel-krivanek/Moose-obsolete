exporting
increment

	nb := nb + 1.
	progBar ifNotNil: [ progBar value: nb ]