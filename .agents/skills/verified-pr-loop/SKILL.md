---
name: verified-pr-loop
description: >-
  Cierra un cambio ya verificado con commit, push a la rama de trabajo, una PR
  lista y la resolución de CodeRabbit antes del merge humano. Usar cuando pidan
  abrir o actualizar una PR, dejar el cambio listo para merge, revisar
  CodeRabbit, o repetir la metodología de verificación y PR.
---

# Verified PR loop

El cambio tiene que estar comprobado antes de publicarlo. La PR queda lista para revisión. Quien pidió el trabajo hace el merge, salvo que pida lo contrario.

## Antes de publicar

1. Lee las instrucciones del repositorio: rama base, título, revisores y comprobaciones confirmadas. No inventes comandos.
2. Revisa `git status --short`, el diff y los archivos sin seguimiento. No incluyas secretos, `.env`, planes internos, cachés ni artefactos de build.
3. Confirma la evidencia de la tarea: pruebas, lint, formato y build que el repositorio marca como obligatorios para los archivos tocados. En un cambio de interfaz, la evidencia incluye el flujo usado en el navegador, no solo una captura.
4. Si esa evidencia falta, consíguela antes del commit. No abras la PR con comprobaciones pendientes que puedas ejecutar.

## Publicar

1. Commit atómico. El mensaje dice por qué cambia el comportamiento.
2. La rama de trabajo no es la rama base. Push a esa rama (`git push -u origin HEAD:<rama>`). Nunca hagas push a la rama base para "actualizar la PR".
3. Si la rama ya tiene una PR abierta, actualízala. No abras otra.
4. Si no existe, ábrela lista para revisión. No uses draft. La base es la que indiquen las instrucciones del repositorio.
5. Asigna al autor de la petición. No añadas revisores si pidió asignárselos él. Un `CODEOWNERS` puede pedir revisión por su cuenta; no sumes más.
6. No hagas merge, deploy ni push a la rama base salvo petición explícita.

## CodeRabbit y CI

Sigue [references/github.md](references/github.md) para leer hilos, responder y resolverlos.

1. Espera a que CI y CodeRabbit hayan informado. Si todavía no hay revisión, dilo y no inventes comentarios.
2. Clasifica cada comentario como válido, falso positivo o pendiente de una decisión. No cambies el producto para acallar un falso positivo.
3. Corrige solo lo válido, con la prueba que corresponda, y vuelve a ejecutar las comprobaciones afectadas.
4. Responde en el hilo con la evidencia. Si las instrucciones del repositorio piden etiquetar a `@coderabbit`, hazlo.
5. Resuelve el hilo solo después de que el arreglo esté en la rama remota, o cuando el comentario quede descartado con evidencia.
6. Vuelve a mirar CI. No declares la PR lista si un job tocado por el cambio sigue en rojo.

## Cierre

Informa:

- URL de la PR
- qué se comprobó y el resultado
- comentarios resueltos, descartados y abiertos
- que el merge queda para quien lo pidió, si así se acordó
