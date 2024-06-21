## Instruções
 1. Após clonar o projeto, execute ```npm install``` para instalar as dependências
 2. Execute ```npm run prisma``` para gerar o banco de dados
 3. Execute ```npm run build``` para executar a aplicação
 4. Agora é só utilizar a API

## Instruções Docker
 1. Com o Docker devidamente instalado e configurado, execute o seguinte comando na raiz do projeto:

 ```
 docker build -t api-dev-web .
 ```

 2. Após a build ser concluída com sucesso, execute:

 ```
 docker run -p 3000:3000 api-dev-web
 ```

 3. Agora é só utilizar a API no endereço `http://localhost:3000`

## Autenticação
### Registrar
```
http://localhost:3000/api/auth/signup
```

Body:
```json
{
        "name": "nomeDeUsuario",
        "email": "seuemail@gmail.com",
        "password": "suasenha123"
}
```
### Logar
```
http://localhost:3000/api/auth/signin
```

Body:
```json
{
        "email": "seuemail@gmail.com",
        "password": "suasenha123"
}
```

Copiar o token retornado para dentro do header das próximas requisições.

```Authorization: Bearer codigo_token```

## Exemplos
### Listar usuários
Requisição (GET):
```
http://localhost:3000/api/users
```
  
---

### Criar post
Requisição (POST):
```
http://localhost:3000/api/post
```

Body:
```json
{
        "title": "Título do post",
        "content": "Esse aqui é o conteúdo do post",
        "authorId": 1,
        "published": true
}
```
Onde `authorId` é o ID do usuário criador do post
### Listar posts
Requisição (GET):
```
http://localhost:3000/api/posts
```

---

### Criar comentário
Requisição (POST):
```
http://localhost:3000/api/comment
```

Body:
```json
{
        "content": "Este é o conteúdo do comentario do post",
        "postId": 3
}
```
Onde `postId` é o ID do post em que o comentário será adicionado

### Listar comentários por post
Requisição (GET):
```
http://localhost:3000/api/posts/3/comments
```

Onde '3' é o ID do post do qual serão obtidos os comentários.
