PUBLIC cadena_conec,lnHandle,m.v_flag

gcRutaExe = SYS(5)+SYS(2003)+"\" && Define la ruta por defecto 
SET DEFAULT TO (gcRutaExe)

SET PATH TO ".\Formularios\; .\Clases; .\Menu; .\Programas" && Pad de las carpetas que crear para poder encontrar sus objetos


SET DELETED ON
SET DATE TO BRITISH
cadena_conec="Driver={MySQL ODBC 3.51 Driver};SERVER=localhost;UID=root;PWD=;DATABASE=vfp_aipem_group;PORT=3306"

SQLSETPROP(0,"DispLogin" , 3 )
lnHandle = SQLSTRINGCONNECT(cadena_conec) 
IF lnHandle <= 0
	AERROR(laErr)
	MESSAGEBOX("No se pudo conectar a mySQL. Error: " + CHR(13) + laErr[2])
ELSE
	WITH _SCREEN && Centrar una imagen en la pantalla principal (_Screen)
		.AutoCenter  = .T. && Centrar
		.WindowState = 2 && Maximiza la pantalla.
		.Caption     = "BOHACEC LEANDRO IVAN" && Título
		.Closable    = .F. && Para que no salga en msj "NO SE PUEDE SALIR DE VISUAL FOXPRO" cuando hagan click en la "CRUZ" de salir, y salga directamente al escritorio de WINDOWS 
	ENDWITH
	SET MESSAGE TO "POSTULANTE: BOHACEC LEANDRO IVAN, EMPRESA: AIPEM GROUP S.A."
	DO menu_principal.MPR
	READ event
ENDIF
