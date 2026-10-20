# Cursor

Cursor no carga solo por estar el repositorio clonado en otro directorio. Hay que instalar la skill en una ruta que la sesión descubra.

| Ámbito | Ruta |
| --- | --- |
| Esta máquina, todos los chats | `%USERPROFILE%\.cursor\skills\<nombre>\` |
| Cuenta de Cursor, sincronizada | `skills/<nombre>/` dentro del almacén de usuario del agente |
| Un repositorio | `<repo>/.agents/skills/<nombre>/` o `<repo>/.cursor/skills/<nombre>/` |

La copia canónica de este repositorio vive en `.agents/skills`. El script `scripts/install.ps1` publica esa copia en las rutas personales de Cursor, Claude y ChatGPT/Codex.

Invocación: `/verified-pr-loop`, o pedirla por su nombre. Una sesión ya abierta puede no ver una skill recién instalada hasta el siguiente chat.
