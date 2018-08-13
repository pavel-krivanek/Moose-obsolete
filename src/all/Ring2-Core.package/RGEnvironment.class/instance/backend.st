accessing
backend 

	^ backend ifNil: [ backend := RGEnvironmentBackend for: self ].