# CRUD

### 📄 Descrição

Projeto CRUD desenvolvido em Java utilizando **JSP, JDBC e conexão com banco de dados MySQL**.  
Projeto acadêmico para a disciplina **Desenvolvimento Web**.

Este sistema permite realizar as operações básicas de Create, Read, Update e Delete sobre dados de clientes, com interface web e conexão ao banco MySQL.

---

### 🚀 Funcionalidades

- ✔️ Cadastro de clientes  
- ✔️ Listagem dos clientes cadastrados  
- ✔️ Edição dos dados dos clientes  
- ✔️ Exclusão de clientes  
- ✔️ Logout (se implementado)

---

### 🛠️ Tecnologias

- Java 24 (JDK 24)  
- JSP (JavaServer Pages)  
- JDBC (Java Database Connectivity)  
- MySQL  
- Apache Tomcat 10.1.41  
- WAMP Server 3.3.7 (MySQL + Apache)  
- NetBeans IDE

---

### 🗂️ Estrutura do Projeto

```
CRUD/
├── src/ ← Código fonte Java (DAO, Conexão)
├── web/ ← Arquivos JSP, WEB-INF, arquivos estáticos
├── nbproject/ ← Configurações do NetBeans (opcional)
├── build.xml ← Script de build NetBeans
└── README.md ← Documentação do projeto
```

---

### 🔐 Login
O sistema possui uma funcionalidade simples de login para controlar o acesso.

**Credenciais padrão**:
```
Usuário: admin
Senha: 123
```
---

### 💾 Banco de Dados

O banco de dados utilizado é o MySQL, com o nome da base `crudjsp`.  

Para facilitar a configuração, exportamos o banco de dados para o arquivo `cliente.sql` (incluso no repositório).  

### Passos para preparar o banco:

1. Importe o arquivo `cliente.sql` para seu MySQL via phpMyAdmin ou linha de comando:

```
mysql -u root -p < cliente.sql
```
O banco de dados, tabelas e dados serão criados conforme o arquivo.

⚙️ Configuração da conexão
No arquivo Conexao.java (pacote br.com.dao), a conexão está configurada assim:

```
conn = DriverManager.getConnection(
    "jdbc:mysql: //localhost:3306/crudjsp", 
    "root",      // Usuário padrão MySQL
    ""           // Senha (deixe vazio se não houver)
);
```

Caso seu MySQL tenha outro usuário ou senha, atualize essa linha para refletir sua configuração.

🚀 Como rodar o projeto

1. Clone este repositório:

```
git clone https://github.com/seu-usuario/CRUD.git
```

2. Importe o projeto no NetBeans como "Projeto com Código Existente".

3. Configure o banco de dados conforme descrito acima.

4. Certifique-se de que o WAMP Server (MySQL + Apache) está rodando.

5. Configure o Apache Tomcat na IDE (porta padrão 8080).

6. Rode o projeto no Tomcat pelo NetBeans.

7. Acesse no navegador:

```
http://localhost:8080/CRUD/
```
## 🎥 Demonstração

Vídeo da demonstração do projeto :

🔗 [\[Link do vídeo no YouTube\]](https://www.youtube.com/watch?v=inzelWiIPXI)

---

### 👨‍💻 Autor

- Nome: Alexandre Henrique Dorfler Schopf

- RA: 2224101576

- Disciplina: Desenvolvimento Web

---

### 📄 Licença
Este projeto é livre para fins acadêmicos.

---