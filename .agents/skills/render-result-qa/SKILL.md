---
name: render-result-qa
description: >-
  Revisa un render obtenido contra su imagen base y sus referencias antes de
  publicarlo. Usar cuando se genere un resultado de vista, se compare base,
  referencia y resultado, o se pida un agente de QA del render.
---

# QA del render obtenido

El resultado solo se publica si conserva la base. Una imagen más atractiva no compensa un fallo de geometría.

## Entrada

Para cada candidato haz falta:

- la imagen base
- las referencias o la indicación, con su rol
- el resultado generado
- el contrato de esa vista: qué fija la base y qué puede cambiar

## Revisión

Mira las tres imágenes. No te fíes del texto del prompt.

1. Volumen: misma altura, mismos paños y mismas proporciones. Un piso de más o un cuerpo nuevo es fallo.
2. Huecos y acceso: la puerta y las ventanas siguen en el mismo sitio. No se espeja ni se gira la fachada.
3. Cámara: el encuadre y el horizonte no saltan a otra vista.
4. Cambio autorizado: solo entra lo que el rol permite (material, luz, urbanización, acabado, entorno). Una referencia de acabado no puede traer otro edificio.
5. Negativa: si el hueco es un edificio ajeno, esa foto no aparece como resultado ni como imagen enviada.
6. Identidad: no se inventan rótulos, logos ni personas que la base no tenía.

## Veredicto

`PASS` solo si los puntos 1 a 3 se cumplen y el cambio cabe en el punto 4. Cualquier duda de geometría es `FAIL`.

Escribe el veredicto, el motivo en una frase y si la imagen puede entrar en la guía como `Resultado`. Un `FAIL` no se publica.
