cache
retrieveSuffixMapping
	^ suffixMapping ifNil: [ suffixMapping := self suffixMapping asDictionary ]