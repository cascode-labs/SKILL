/*****************************************************************
 *                                                               *
 *                  Cliosoft Design Management                   *
 *                                                               *
 *****************************************************************/

printf("  Loading Cliosoft library\n")

let((file_path dir_path files)
	; file and directory paths of this file
	file_path = simplifyFilename(get_filename(piport))
	dir_path = strcat("/" buildString(reverse(cdr(reverse(parseString(file_path "/")))) "/"))

	files = list(
	"ClioChkOutCells.il"
	"ClioGdmco.il"
	)

	foreach(file files
		loadi(strcat(dir_path "/" file))
	)
)

printf("  Done Loading Cliosoft library\n")
