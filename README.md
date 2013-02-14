zapp
====

App to create others applications in Rails 

Através de um arquivo de configuração em yml, será adicionado 
todas as gems necessárias para a criação de uma app, caso
essas gems precisem de alguma configuração específica para ela funcionar, 
também será adicionado uma config padrão.

testar com rspec

criar arquivo yml para configurar as gems

adicionar gems no arquivo

instalar as gems

adicionar gems através de grupos

adicionar gems através de versões

criar a app conforme o usuário desejar

configurar a app conforme as gems que foram instaladas

separar as configurações das gems através de módulos

adicionar git?

deploy no heroku?

Dependências:

ruby 1.9.3
gems 

map
  
Para funcionar:

rake init['path/to/zapp/example/config_app.yml']
