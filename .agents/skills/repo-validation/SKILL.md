---
name: repo-validation
description: >-
  Ejecuta las comprobaciones técnicas que el repositorio ya define, en local y
  en la pull request. Usar cuando pidan validar, lint, formato, tests, build,
  CI, o mantener un cambio comprobado tanto en la máquina como en la PR.
---

# Validación del repositorio

Las comprobaciones salen del repositorio. No inventes comandos ni copies los de otro proyecto.

## De dónde salen

Lee, en este orden, lo que exista:

1. El `AGENTS.md` más cercano a los archivos tocados.
2. El workflow de CI que cubre esos archivos.
3. `package.json`, `Makefile`, `pyproject.toml` o el manifest equivalente.

Usa solo comandos que aparezcan ahí. Si un comando no está confirmado, márcalo como pendiente y no lo presentes como ejecutado.

## Local

1. Mira `git status --short` y el diff. El alcance son los archivos de la tarea.
2. Ejecuta las comprobaciones que esas instrucciones asignan a ese alcance: tests, lint, formato, build, synth u otras. No lances el stack entero si el cambio no lo toca y las instrucciones lo separan por área.
3. Si una falla, corrige la causa y vuelve a ejecutar esa comprobación. No des el cambio por válido con un fallo abierto que puedas reproducir.
4. En interfaz, la comprobación local incluye el flujo en el navegador, no solo la captura.

## Pull request

1. Lee `gh pr checks` de la PR abierta. No abras otra.
2. Un job rojo que cubre el área tocada es un fallo de esta validación. Saca la aserción o el log del job; no lo atribuyas de memoria.
3. Corrígelo si el cambio lo provoca o si es una carrera que esa ejecución ya ha mostrado. Un aviso que no cambia el comportamiento, como una cobertura de docstrings que el repositorio no exige, se deja y se explica.
4. Tras el push, la PR vuelve a comprobarse. No la declares lista mientras un job de su área siga en rojo. Los que sigan en curso se informan como pendientes.

## Cierre

Di qué comandos corriste, el resultado, qué queda pendiente en CI y qué no ejecutaste porque el repositorio no lo pide para este alcance.
