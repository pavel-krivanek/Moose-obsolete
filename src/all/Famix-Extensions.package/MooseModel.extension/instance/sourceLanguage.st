*Famix-Extensions
sourceLanguage
	<MSEProperty: #sourceLanguage type: #FAMIXSourceLanguage>
	<MSEComment: 'Source of the Language to which the model corresponds'>
	^ sourceLanguage
		ifNil: [ sourceLanguage := self allSourceLanguages
				detect: [ :each | each isAttached not ]
				ifNone: [ FAMIXUnknownSourceLanguage new ] ]