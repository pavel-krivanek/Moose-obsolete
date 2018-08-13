private - backend interface
pvtFullyResolved

	^ (self pvtResolvableProperties collect: #value) allSatisfy: #isRingFullyResolved