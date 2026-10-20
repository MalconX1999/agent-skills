# ChatGPT y Codex

ChatGPT y Codex leen el mismo `SKILL.md`. No hace falta una copia distinta.

| Ámbito | Ruta |
| --- | --- |
| Este usuario, cualquier repo | `~/.agents/skills/<nombre>/` |
| Un repositorio | `<repo>/.agents/skills/<nombre>/` |

En Windows, `~` es `%USERPROFILE%`.

Codex sigue un enlace o junction hacia esta carpeta. En ChatGPT se invoca con `@verified-pr-loop`. En Codex CLI o en el IDE, con `$verified-pr-loop` o `/skills`.

Si la skill no aparece, reinicia Codex. El instalador oficial también puede traerla desde este repositorio:

```text
$skill-installer https://github.com/MalconX1999/agent-skills
```

Una sesión de ChatGPT en la nube no ve el disco local. Para usarla allí, conecta el repositorio o pega el contenido de `.agents/skills/verified-pr-loop/SKILL.md` como instrucción del proyecto.
