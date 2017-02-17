printing
writeXMLOn: aWriter
	"Template method used by nodes to write themselves on XMLWriters.

	Sending with a customized XMLWriter instance as the argument can be used
	to customize printing, but #printOn:beforeWritingDo: should be preferred."