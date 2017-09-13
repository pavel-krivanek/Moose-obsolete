accessing
format: aString
	"This indicates the format of the content, which is how the string content should be interpreted. The following values are reserved: SVG, GIF, PNG, JPG, WMF, EMF, BMP. In addition the prefix 'MIME: ' is also reserved. This option can be used as an alternative to express the reserved values above, for example ""SVG"" could instead be expressed as ""MIME: image/svg+xml""."
	format := aString