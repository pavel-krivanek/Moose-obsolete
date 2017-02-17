meta
metaBuilder: aCollectionOfClasses withProcessor: aPragmaProcessor
	"I take as parameters a collection of classes described with Fame pragmas and a processor for Fame pragmas"

	aPragmaProcessor queue: aCollectionOfClasses; run.
	^ aPragmaProcessor asTower