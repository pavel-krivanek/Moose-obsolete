writing
enablePrettyPrinting
	"enables 'pretty printing' whitespace formatting to make nicer output"

	self formatter: (XMLPrettyPrintingWriterFormatter writer: self)