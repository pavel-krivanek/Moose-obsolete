private
printAnnouncementTypeFor: anAnnouncementType
 
	^ anAnnouncementType isCollection 
		ifTrue: [
			String streamContents: [:s | anAnnouncementType printElementsOn: s]] 
		ifFalse: [
			anAnnouncementType printString]