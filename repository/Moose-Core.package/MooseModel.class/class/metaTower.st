meta
metaTower

	^metaTower ifNil: [
		metaTower := self metaBuilder: self metamodelClasses ]