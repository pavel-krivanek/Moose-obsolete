accessing
importingStrategy

	^ importingStrategy ifNil: [ importingStrategy := MooseHismoEveryMonthStrategy new ]