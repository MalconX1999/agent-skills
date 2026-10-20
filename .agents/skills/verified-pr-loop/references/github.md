# GitHub, CI y CodeRabbit

Usa `gh`. Si `gh auth status` falla, detente y pide autenticación.

## PR existente

```bash
gh pr view --json number,url,state,isDraft,baseRefName,headRefName,reviewRequests,assignees
gh pr checks
```

Una PR en draft se pasa a lista con `gh pr ready` cuando el cambio ya está verificado. No abras una segunda PR para la misma rama.

## Hilos de revisión

```bash
gh api graphql -f query='query($owner:String!,$repo:String!,$number:Int!){
  repository(owner:$owner,name:$repo){
    pullRequest(number:$number){
      reviews(first:20){ nodes { author { login } state } }
      reviewThreads(first:50){
        nodes { id isResolved comments(first:20){ nodes { author { login } body path } } }
      }
    }
  }
}' -F owner=OWNER -F repo=REPO -F number=NUMBER
```

## Responder y resolver

Responde solo después de validar el comentario. El cuerpo cita la evidencia (prueba, diff o motivo del falso positivo).

```bash
gh api repos/OWNER/REPO/pulls/NUMBER/comments -f body='@coderabbit …' -F in_reply_to=COMMENT_ID
```

Omite `@coderabbit` cuando las instrucciones del repositorio no lo pidan.

Resuelve el hilo cuando el arreglo ya está en el remoto, o cuando el descarte quedó escrito en el hilo:

```bash
gh api graphql -f query='mutation($id:ID!){ resolveReviewThread(input:{threadId:$id}){ thread { isResolved } } }' -f id=THREAD_ID
```
