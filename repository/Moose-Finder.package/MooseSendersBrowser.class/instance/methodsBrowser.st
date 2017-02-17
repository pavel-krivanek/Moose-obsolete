as yet unclassified
methodsBrowser
	| methodsBrowser |
	methodsBrowser := GLMTabulator new.
	methodsBrowser row: #methods; row: #code.
	methodsBrowser transmit to: #methods; andShow: [:a | 
		a list 
			title: [:method | 'Senders of ', method name];
			display: [:method | method invokingMethods]].
	methodsBrowser transmit from: #methods; to: #code; andShow: [:a |
		a text 	
			display: [:method | method formattedSourceText ]].
	methodsBrowser transmit toOutsidePort: #selection; from: #methods.
	^ methodsBrowser