# Catálogo

Barrido de chats locales de Cursor (proyectos Render AI, TDE Renders, HMY, TimePulse, GDO, SkillsIssue, CadInfoReader, Formación, Modelado BIM y ventanas sueltas). Solo está implementada la primera. El resto son candidatas, no instrucciones activas.

| Skill | Estado | Por qué salió en los chats |
| --- | --- | --- |
| `verified-pr-loop` | publicada | Cerrar un cambio verificado, abrir o actualizar la PR y resolver CodeRabbit sin hacer el merge. |
| `repo-validation` | publicada | Aplicar en local y en la PR las comprobaciones que el repositorio ya documenta, sin inventar comandos. |
| `render-result-qa` | publicada | Aprobar o rechazar un render obtenido según si conserva la base y solo aplica el cambio del rol. |
| `branch-board` | propuesta | Pedidos repetidos de top de ramas, diferencia local/remoto y prefijos personales (`Malcon_*`, `Mario_*`) en HMY, Render AI y TimePulse. |
| `handoff-prompt` | propuesta | "Dame el prompt y no lo ejecutes en esta sesión" para que otro chat implemente con el contexto ya cerrado. |
| `multi-root-boundary` | propuesta | Un workspace con dos repos y uno de ellos solo como contexto. Aparece más de una vez. |
| `delivery-status` | propuesta | Estado de una entrega y del proyecto a partir de sus documentos de control, sin reescribirlos. |
| `skill-load-check` | propuesta | Comprobar por qué una skill del disco no entra en el chat. Ya hubo dos sesiones solo para esto. |
| `github-sync-audit` | propuesta | Tabla de repos locales no sincronizados y falsos cambios en GitHub Desktop. |
| `revit-label-trace` | propuesta | Seguir qué texto etiqueta una familia o un tipo, y en qué rama de maquetación está. Muy ligado a Revit. |
| `llm-vs-agent-eval` | propuesta | Comparar el mismo caso con el modelo a solas y con la interfaz de agente, con evidencia y no con impresión. |
| `visual-contract` | propuesta | Explicar un comportamiento de producto con imágenes que ya existen, etiquetas de rol y una insignia, en lugar de un párrafo. |

No convierten en skill los bugs de un solo producto ni la revisión puntual de una rama.
