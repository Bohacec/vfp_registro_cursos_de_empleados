PUBLIC cadena_conec,lnHandle,m.v_flag

gcRutaExe = SYS(5)+SYS(2003)+"\" && Define la ruta por defecto 
SET DEFAULT TO (gcRutaExe)

SET PATH TO ".\Formularios\; .\Clases; .\Programas" && Pad de las carpetas que crear para poder encontrar sus objetos


SET DELETED ON
SET DATE TO BRITISH
cadena_conec="Driver={MySQL ODBC 3.51 Driver};SERVER=localhost;UID=root;PWD=;DATABASE=vfp_aipem_group;PORT=3306"

SQLSETPROP(0,"DispLogin" , 3 )
lnHandle = SQLSTRINGCONNECT(cadena_conec) 
IF lnHandle <= 0
	AERROR(laErr)
	MESSAGEBOX("No se pudo conectar a mySQL. Error: " + CHR(13) + laErr[2])
ELSE
	MESSAGEBOX('Conexi?n local Exitosa',64,'Aviso del Sistema',500)
	&&DO "C:\Users\Leandro Iv?n Bohacec\Documents\Proyectos de Visual FoxPro\GestionFerreteria\Version1\Proyecto\Programas\variables_publicas.prg"
ENDIF
