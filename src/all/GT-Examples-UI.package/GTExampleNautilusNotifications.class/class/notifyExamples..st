private
notifyExamples: aCollection
	UIManager default 
		gtInform: 'There are ' , aCollection size asString , ' invalid examples' , String cr, ' (click to browse)'
		send: #examples:event:from:
		to: self
		withValue: aCollection