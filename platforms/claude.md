# Claude

Claude Code usa el mismo `SKILL.md`.

| Ámbito | Ruta |
| --- | --- |
| Este usuario, cualquier proyecto | `~/.claude/skills/<nombre>/SKILL.md` |
| Un repositorio | `<repo>/.claude/skills/<nombre>/SKILL.md` |

En Windows, `~` es `%USERPROFILE%`. Claude Code acepta un symlink o junction. No uses el nombre de carpeta `synced`: Claude lo reserva para las skills de claude.ai.

En el terminal se invoca con `/verified-pr-loop`. Claude también puede elegirla por la descripción.

Las sesiones de Claude en la web o en Cowork no leen esta carpeta. Ahí la skill entra por las skills de la cuenta de claude.ai, o adjuntando `SKILL.md` al proyecto. Documentación: <https://code.claude.com/docs/en/skills>.
