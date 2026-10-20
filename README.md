# agent-skills

Skills personales de Malcon Mora. La copia canónica está en `.agents/skills`. Cursor, Claude y ChatGPT/Codex leen el mismo `SKILL.md`; cambian solo la carpeta donde lo descubren.

| Producto | Carpeta personal | Cómo se pide |
| --- | --- | --- |
| Cursor | `%USERPROFILE%\.cursor\skills` | `/verified-pr-loop` |
| Claude Code | `%USERPROFILE%\.claude\skills` | `/verified-pr-loop` |
| ChatGPT y Codex | `%USERPROFILE%\.agents\skills` | `@verified-pr-loop` o `$verified-pr-loop` |

Detalle de cada uno: [Cursor](platforms/cursor.md), [Claude](platforms/claude.md), [ChatGPT](platforms/chatgpt.md).

## Instalar en esta máquina

Desde la raíz del clon, en PowerShell:

```powershell
.\scripts\install.ps1
```

El script crea un junction. No copia el archivo, así que un `git pull` actualiza Cursor, Claude y Codex a la vez. Si la carpeta de la skill ya existe, no la sustituye.

Cursor además puede guardar skills en el almacén de la cuenta. Esa copia no sigue el junction: hay que renovarla cuando cambie la skill.

## Contenido

- `verified-pr-loop`: commit, PR lista y CodeRabbit después de verificar el cambio. El merge lo hace quien lo pidió.
- `repo-validation`: tests, lint, formato y demás comprobaciones que el propio repositorio define, en local y en la PR.
- `render-result-qa`: revisa un render obtenido contra su base y sus referencias antes de publicarlo.
- [CATALOG.md](CATALOG.md): skills que el trabajo reciente justifica y todavía no están escritas.

## Qué no entra aquí

Secretos, instrucciones de un solo repositorio de producto y copias distintas del mismo texto para cada herramienta.
