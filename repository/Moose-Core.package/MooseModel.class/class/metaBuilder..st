meta
metaBuilder: aCollectionOfClasses 
	"I take as parameter a collection of classes described with Fame pragmas"

	^ self metaBuilder: aCollectionOfClasses withProcessor: MoosePragmaProcessor new