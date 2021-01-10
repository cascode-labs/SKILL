/*****************************************************************
 *                                                               *
 *                           Viva                                *
 *                                                               *
 *****************************************************************/

printf("  Loading VIVA library\n")

let((file_path dir_path files)
	; file and directory paths of this file
	file_path = simplifyFilename(get_filename(piport))
	dir_path = strcat("/" buildString(reverse(cdr(reverse(parseString(file_path "/")))) "/"))

	files = list(
	"abInstFreq.il"
	)

	foreach(file files
		loadi(strcat(dir_path "/" file))
	)

	; Register calculator functions
	abRegInstFreqSpecialFunction()
)

printf("  Done Loading VIVA library\n")
