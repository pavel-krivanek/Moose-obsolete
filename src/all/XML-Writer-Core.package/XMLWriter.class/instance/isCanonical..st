accessing
isCanonical: aBoolean
	"Should the output be canonical XML (http://www.w3.org/TR/xml-c14n)?
	(Not default)"

	self isCanonical = aBoolean
		ifTrue: [^ self].
	(isCanonical := aBoolean)
		ifTrue: [
			self
				formatter: self canonicalWriterFormatterClass new;
				lineBreak: self canonicalLineBreak;
				contentEscapes: self contentCanonicalEscapes;
				contentStringEscapes: self contentStringCanonicalEscapes;
				isEscaping: true;
				omitsRedundantXMLNSDeclarations: true]
		ifFalse: [
			self
				formatter: nil;
				lineBreak: self defaultLineBreak;
				contentEscapes: self contentDefaultEscapes;
				contentStringEscapes: self contentStringDefaultEscapes]