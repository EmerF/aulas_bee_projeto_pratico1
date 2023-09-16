<h2>1 - Spring Boot: </h2>
<p> Criar um projeto utilizando o Spring Boot Starter
<li>Adicionar as dependências</li>
<li>JPA</li>
<li>H2</li> </p>

<h2>2 - NOSQL </h2>
 <ol><li>Criar uma base de dados usando mongo através do docker ;</li>
<li>Colocar os comandos	 em arquivo de texto, um por linha com “;” no final da linha, chamado mongo.txt dentro do projeto em:
src/main/resources ;</li></ol>

<h2>3 - JUNIT </h2> 
<p>Criar caso de teste para uma funcionalidade de cadastro de produtos, validando os cenários </p>
<ol><li>Sucesso no cadastro: sistema retorna “Produto cadastrado” </li></ol>
<ol><li>Erro: “Erro no cadastro do produto” </li></ol>

<h2>4 -Bancos Relacionais</h2> 


<p>Criar instruções sql que serão carregadas na inicialização da aplicação (data.sql):</p>
<ol>
<li>Criação de uma tabela chamada produto
    <ol>
    <li>id produto</li>
    <li>nome do produto</li>
    <li>valor do produto</li>
   <li> descrição</li></ol>


   <li>Definir: 
<ol>
    <li>
    melhor tipo de dado para cada campo</li>
    <li> chave primária da tabela (auto-incremento)</li></ol></li>

 <li>Fazer a inserção de 3 produtos
        <ol>
            <li>alterar o nome de 2 produtos</li></ol></li>

<li>Alterar a tabela produto para incluir a coluna origem do tipo texto
    <ol>
        <li> inserir um novo produto com a coluna origem</li></ol></li>

<li>Criação de uma tabela chamada tipo produto
    <ol>
        <li> id </li>
            <li>nome do tipo</li>   
                <li>categoria</li>  
                    <li> Criar um relacionamento entre as tabelas produto e tipo produto(usando constraint)
</li></ol></li>


<li>Inserir 3 tipos de produtos</li>

<li>Ao final fazer select nas tabelas:
    <ol>
        <li>Produto</li>    
        <li>Tipo produto</li> </ol>   
</li>
Ao final fazer select nas duas tabelas usando inner join</li></ol>


<h2>5 - Testes automatizados Selenium</h2>
<ol><li> Criar um teste usando selenium para abrir o site https://www.ambev.com.br/ ;</li>
<li>
Usar o driver do firefox versão 76 rodando pelo docker(remote driver)</li></ol>
