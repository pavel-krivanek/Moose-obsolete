private
notifyExample: aGTExample
	UIManager default 
		gtInform: 'Example ', aGTExample gtDisplayString , ' is invalid' , String cr, ' (click to browse)'
		send: #example:event:from:
		to: self
		withValue: aGTExample