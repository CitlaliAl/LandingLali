# Landing Lali

Portafolio personal creado con Quarto.

## Vista local

Desde la carpeta del proyecto, ejecuta `quarto preview` para abrir una vista que se actualiza al guardar cambios. Usa `quarto render` para generar el sitio final dentro de `_site`.

## Publicar con GitHub y Vercel

1. Sube esta carpeta a un repositorio de GitHub.
2. En Vercel, importa ese repositorio.
3. Si el repositorio contiene esta carpeta dentro de otra carpeta, selecciona `LandingLali` como **Root Directory**. Si sus archivos están directamente en la raíz, deja esa opción vacía.
4. Vercel usará `vercel.json`: instalará Quarto 1.10.18, compilará el sitio con `quarto render` y publicará `_site`.

Cada push al repositorio conectado inicia una nueva compilación y despliegue.
