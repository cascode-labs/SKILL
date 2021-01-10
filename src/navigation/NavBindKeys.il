 /*****************************************************************
  *                                                               *
  *             Navigation Bind Keys                              *
  *                                                               *
  *****************************************************************/

foreach(application '("Schematics" "Show File" "Symbol" "Graphics Browser" "Layout")
	hiSetBindKey( application "Ctrl<Btn4Down>" "hiZoomInAtMouse()")
	hiSetBindKey( application "Ctrl<Btn5Down>" "hiZoomOutAtMouse()")
	hiSetBindKey( application "Shift<Btn4Down>" "geScroll(nil \"w\" nil)")
	hiSetBindKey( application "Shift<Btn5Down>" "geScroll(nil \"e\" nil)")
	hiSetBindKey( application "<Btn4Down>" "geScroll(nil \"n\" nil)")
	hiSetBindKey( application "<Btn5Down>" "geScroll(nil \"s\" nil)")
)
