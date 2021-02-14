;;;;;;;;;;;;;;
; High Value ;
;;;;;;;;;;;;;;
; Return to the top when descended in the hierarchy
hiSetBindKey("Schematics" "Alt<Key>x" "hierDescend(parseString(hierPath \"/\"))")

; increase/ decrease wire thickness with ALT - scrollwheel
; Also increments a bus size if a label is selected
hiSetBindKey("Schematics" "Alt<Btn4Down>" "inc_wire_inst(1.25)")
hiSetBindKey("Schematics" "Alt<Btn5Down>" "inc_wire_inst(0.8)")

; Edit all instance's properties
hiSetBindKey("Schematics" "Alt Shift <Key>q" "load( \"/home/USERNAME/SKILL/sch_prop_all_sel.il\" )" )
; Edit just the current instance's properties
hiSetBindKey("Schematics" "<Key>q" "load( \"/home/USERNAME/SKILL/sch_prop_only_current.il\" )" )

hiSetBindKey("Schematics" "Ctrl<Key>4" "MYappendSignal()")

; Toggle grid visibility
hiSetBindKey("Schematics" "Ctrl<Key>F10" "sch_grid_togl()")

; Instantiate NoConn
hiSetBindKey("Schematics" "Ctrl <Key>n" "{ MYLIB=schCreateInstForm->libraryName->value \
	         MYCELL=schCreateInstForm->cellName->value MYVIEW=schCreateInstForm->viewName->value \
	         schHiCreateInst(\"basic\" \"noConn\" \"symbol\") }")

; Instantiate from Lib manager
hiSetBindKey("Schematics" "Ctrl Alt <Key>n" "CreateLibManSelInst()" )

/*********
 * Other *
 *********/
; Bus transposing with ALT+SHIFT+scrollwheel
hiSetBindKey("Schematics" "Alt Shift<Btn4Down>" "proc_alt_sh_scroll_up()")
hiSetBindKey("Schematics" "Alt Shift<Btn5Down>" "proc_alt_sh_scroll_down()")

