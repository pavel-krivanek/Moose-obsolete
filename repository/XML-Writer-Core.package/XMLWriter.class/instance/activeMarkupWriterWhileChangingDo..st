private
activeMarkupWriterWhileChangingDo: aBlock
	"evaluate aBlock for the active (top) markup writer until there isn't
	one or it's the same (still active) writer after evaluating aBlock"

	| markupWriterStackSize activeMarkupWriter previousActiveMarkupWriter |

	"inlined from activeMarkupWriter for speed"
	[(markupWriterStackSize := markupWriterStack size) = 0
		or: [
			(activeMarkupWriter := markupWriterStack at: markupWriterStackSize) ==
				previousActiveMarkupWriter]]
		whileFalse: [
			aBlock value: activeMarkupWriter.
			previousActiveMarkupWriter := activeMarkupWriter]