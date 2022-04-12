if messagebox('¿SEGURO DESEA SALIR DEL SISTEMA?',36,'ATENCION!!!')=6
	DEACTIVATE MENU 
	RELEASE MENUS
	SET SYSMENU to default
	release all extended
	close all
	CLEAR EVENT
else
	return
endif