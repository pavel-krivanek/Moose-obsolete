helpers-copy
shallowCopy
	"we define this message as default implementation for ghost copy methods"
	
	^self metaMessagesClass makeShallowCopyOf: ghost