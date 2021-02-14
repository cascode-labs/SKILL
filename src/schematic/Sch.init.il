/*****************************************************************
 *                                                               *
 *                           Schematic                           *
 *                                                               *
 *****************************************************************/

printf("  Loading Schematic library\n")

let((file_path dir_path files)
	; file and directory paths of this file
	file_path = simplifyFilename(get_filename(piport))
	dir_path = strcat("/" buildString(reverse(cdr(reverse(parseString(file_path "/")))) "/"))

	files = list(
	"abInstFreq.il"
	"proc_alt_sh_scroll.il"
    "updateTemp.il"
    "txpose_inst_label.il"
    "CCSDescend.il"
    "CCSLibManSelectInst.il"
    "CreateLibManSelInst.il"
	)

	foreach(file files
		loadi(strcat(dir_path "/" file))
	)
)

printf("  Done loading Schematic library\n")
