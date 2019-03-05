Esta explicación es para la creación de una TV en streaming con una Raspberry Pi y el Raspberry Pi TV HAT
De esta manera, es posible realizar el streaming de TV TDT a todos los dispositivos de la casa e incluso a través de internet.

**Hardware necesario:**

Descripción | Imagen
------------ | -------------
1x **Raspberry Pi** (yo uso una Rpi Zero W) | <img src="images/Pi_Zero_W.jpg" width="300">
1x **Raspberry Pi TV HAT** | <img src="images/PI_TV_HAT.png" width="300">
1x **Tarjeta SD con Raspbian instalado** |

Este tutorial parte de la base de que la Raspberry ya está funcionando, conectada a internet (ya sea a través de ethernet of WiFi), con el Pi TV HAT instalado, y da los pasos necesarios para instalar TVHeandend y poder ver los canales de TDT a través de la red.

En esta configuración la Raspberry Pi no está pensada para reproducir la TV, sino para hacer de dispositivos de streaming.
La Raspberry Pi se usa como sintonizador "always on", configurada para consumir lo menos posible, y trasmitir inalámbricamente la señal TDT al resto de dispositivos de la red LAN de casa por ejemplo, e incluso abriendo los puertos del router de casa se podría transmitir a través de internet.

En este repositorio se incluye el script [tvheadend_install.sh](tvheadend_install.sh) que instala el add-on [Tvheadend](https://tvheadend.org/) en Raspbian Stretch.

Para ejecutar el script en la Raspberry, simplemente descarga el fichero en la Raspberry, hazlo ejecutable con:

`git clone https://github.com/santirguez/TVHeadend-RPi.git`

Una vez descargado, es necesario hacerlo ejecutable:

`chmod +x tvheadend_install.sh`

Una vez es ejecutable, simplemente hay que ejecutarlo (necesita permisos de administrador):

`./tvheadend_install.sh`

## LOGOTIPOS PARA LOS CANALES NACIONALES Y LOCALES ESPAÑOLES 
  (forkeado de https://github.com/maincenter/Logotipos-TV)
  
El proyecto siguiente está orientado a la creación de los logotipos oficiales de los canales españoles de Televisión, ya sea a nivel nacional o comunitarios.

Estos logotipos dado que representan a canales registrados no son propiedad visual del creador, el creador sólo es reconocido como usuario editor y por lo tanto no tienen ningún derecho sobre el mismo.

En caso de fuerza mayor, dichos logotipos pueden verse alterados o eliminados sin previo aviso.
--------------------------------------------------------------------------------------------------------------------
Este proyecto está pensado para poder ofrecer a los usuarios una forma fácil y sencilla de colocar en sus canales de TV los logos oficiales, ya sea para sistemas como KODI, MyTV, Plex y otros utilizando TVHeadend.

Se facilitarán las URL de acceso directo a todas las bibliotecas en las que trabajamos, con el fin de enlazarlas desde TVHeadend.

Si lo desea, puede descargar uno a uno todos los logotipos y enlazarlos manualmente desde su propio disco duro, si opta por esta opción sus logotipos no se actualizarán automáticamente y deberá realizar una actualización manualmente.

Instalación de las URL's para los logotipos bajo TVHeadend:
--------------------------------------------------------------------------------------------------------------------
- Accede a TVHeadend y vaya a "Configuration --> General --> Base" en esta ventana, encontrará en la parte inferior una sección dedicada a los Picon.

1. Marcamos la casilla que dice: "Prefer picons over channel name"

1. En donde dice: "Channel icon path" Indicaremos la URL de los iconos. (URL's Proporcionadas al final)

1. En el campo: "Channel icon name scheme" marcaremos "No scheme" para adaptarlo a este repositorio.
El resto de opciones las dejaremos tal cual están y en la parte superior iquierda pulsaremos en "SAVE" para que los cambios tengan efecto.

- Ahora vamos a: "Configuration --> General --> Image cache" en este menú marcaremos "Enabled" y "Ignore invalid SSL certificate" el  resto lo dejamos tal cual está por defecto y volvemos a darle a "Save" para guardar los cambios.

- Por último, vamos a "Configuration --> Channel / EPG --> Channels" vamos a la parte inferior derecha de la ventana y donde nos indica cuantos canales mostrar por página, le indicaremos que nos los muestre todos, es decir, "All".

- Marcamos uno a uno todos los canales o podemos valernos de las teclas "Shift + Click izquierdo de ratón" marcando de forma normal el primer canal de la lista, vamos asta el final de la lista y pulsando SHIFT + CLICK Izquierdo del ratón en la última entrada, nos marcará todos los canales. Ahora pulsamos en la opción de la parte superior donde dice: "Reset Icon" y pulsamos en Save, al pulsar en Save nos generará las URL's y si todo a salido bien, lo tendremos funcionando perfectamente.

URL's Logotipos.
--------------------------------------------------------------------------------------------------------------------
- DVB-T o TDT: https://raw.githubusercontent.com/santirguez/TVHeadend-RPi/master/main/transparentes/%C.png

- Movistar-TV o IPTV: https://raw.githubusercontent.com/santirguez/TVHeadend-RPi/master/development/IPTV/MoviStar%2B/%C.png 
