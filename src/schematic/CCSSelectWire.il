procedure(CCSSelectWire(@optional (bBox nil))
let((cv lines allobj)
	unless(bbox
		bbox = enterBox(?prompts list("Draw a box to do selection")))

	cv=geGetWindowCellView()
	geSelectArea(hiGetCurrentWindow() bBox)
	allobj=geGetSelSet(cv)
	lines=setof(x allobj  x~>objType=="line")
	geDeselectAllFig(cv)
	geSelectFigs(lines)
))
