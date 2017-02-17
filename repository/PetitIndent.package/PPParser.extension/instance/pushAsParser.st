*PetitIndent
pushAsParser
	"evaluate myself and if I dont' fail, push the parser made from result on the indent stack"
	^ PPPushAsParserParser on: self