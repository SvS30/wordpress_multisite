##  Wordpress Multisite

Solución para levantar una instancia de [*Wordpress Multisite*](https://kinsta.com/es/blog/multisitio-wordpress/) a través de Docker containers.

### Configuración inicial

 1. Descargar este repo.
 2. Correr `docker-compose up -d`.

	2.1. Esto demorara unos minutos (si es la primera vez que lo ejecuta), ya que esto creará los servicios y la conexión de Wordpress y MySQL.

	2.2. Puede revisar si todo está listo, ejecutando: `docker logs -f wp-mysql`, esperando que su salida sea algo como esto: `/usr/sbin/mysqld: ready for connections.`
 3. Ingresar a la **IP/wordpress** del equipo y realizar instalación normal de Wordpress.

### Instalación
- Una vez la instalación de wordpress se haya realizado, deberá ir a `Tools > Network Setup (Herramientas > Configuración de red).`
- Verá una pantalla que le preguntará cómo desea que se configure su red, utilizando subdominios o subdirectorios (si está corriendo **en local**, solo permitirá la instalación por **subdirectorios**).
- Introduzca el *título* y la *dirección de correo electrónico* del **administrador de red** en los campos correspondientes y haga clic en el botón **Instalar.**
___
Como ultimo paso de la instalación:
- Deberá cambiar la variable [`DOMAIN_CURRENT_SITE`](https://github.com/SvS30/wordpress_multisite/blob/master/overwrite.sh#L5) en `overwrite.sh` por el dominio que vaya a utilizar.
- De igual forma, debera modificar la variable [`SUBDOMAIN_INSTALL`](https://github.com/SvS30/wordpress_multisite/blob/master/overwrite.sh#L4) en `overwrite.sh` si hará una instalación por *subdominios*.

Ya que se haya configurado la red y `overwrite.sh`, deberá ejecutar `sh overwrite.sh`.
Esto configura los archivos de configuración requeridos y solo tendrá que hacer **login de nuevo**.

### Contribuciones
Cualquier contribución es bienvenida, simplemente forkeá este repo y haz un PR. :+1:

### Sugerencias de temas
Cree un nuevo Github Issue si desea ayudar a mejorar esta herramienta, gracias.
