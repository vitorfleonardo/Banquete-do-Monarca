# Banquete do Monarca - Cardápio Digital

Bem-vindo ao repositório oficial do Banquete do Monarca - um inovador aplicativo mobile de cardápio digital construído com Flutter no front end, Dart no back end e Firebase como banco de dados. Este projeto oferece uma experiência única ao permitir que os usuários realizem pedidos de refeições de maneira interativa e ganhem pontos através de um sistema gamificado, recebendo recompensas exclusivas.

## Visão Geral do Projeto

O Banquete do Monarca busca simplificar a experiência de pedidos em restaurantes, proporcionando aos usuários uma plataforma intuitiva para explorar o cardápio, fazer pedidos e receber recompensas por sua lealdade. A integração de um sistema gamificado, baseado em pontos e recompensas associadas ao CPF, adiciona uma camada extra de envolvimento e satisfação ao usuário.

## Funcionalidades Principais

- **Cardápio Interativo:** Explore facilmente opções de refeições com imagens atrativas e descrições detalhadas.

- **Pedidos Simplificados:** Realize pedidos de forma rápida e eficiente através de uma interface amigável.

- **Sistema Gamificado:** Ganhe pontos ao fazer pedidos e desfrute de recompensas exclusivas, incentivando a fidelidade do cliente.

- **Integração com Firebase:** Utilize o Firebase como banco de dados para garantir um armazenamento seguro e em tempo real das informações.

## Pré-requisitos

Antes de começar, certifique-se de ter o ambiente de desenvolvimento Flutter configurado em sua máquina. Além disso, é necessário criar um projeto no Firebase para obter as credenciais e configurar o banco de dados.

```bash
# Instale as dependências do Flutter
flutter pub get
```
## Configuração do Firebase

1. Crie um projeto no [Firebase Console](https://console.firebase.google.com/).
2. Adicione um aplicativo Flutter ao projeto Firebase.
3. Baixe o arquivo de configuração `google-services.json` e coloque-o na pasta `android/app` para Android ou `GoogleService-Info.plist` na pasta `ios/` para iOS.

## Configuração do Back End

1. Abra o diretório `backend` e instale as dependências do Dart.

```bash
cd backend
dart pub get
```

Configure as variáveis de ambiente necessárias no arquivo .env. Exemplo:
```env
Copy code
FIREBASE_API_KEY=your_api_key
FIREBASE_PROJECT_ID=your_project_id
```
## Executando o Projeto
Execute o aplicativo Flutter:

```bash
Copy code
flutter run
```
Execute o servidor Dart (back end):

```bash
Copy code
cd backend
dart run
```
Acesse http://localhost:3000 para visualizar o servidor local.

## Contribuições

Este projeto foi desenvolvido com o esforço e dedicação de várias pessoas. Agradecemos às seguintes contribuições:

- Feito por: Douglas Marinho Martins(Idealizador), GitHub: [M4RINH0](https://github.com/M4RINH0) (Flutter and Dart and Firebase (FullProject))
- Luiza Maluf, GitHub: [LuizaMaluf](https://github.com/LuizaMaluf) (Flutter)
- Renan Vieira Guedes, GitHub: [R-enanVieira](https://github.com/R-enanVieira) (Dart and Firebase)
- Carlos Eduardo, GitHub: [CADU110](https://github.com/CADU110) (Dart and Firebase)
- Vitor Feijó Leonardo, GitHub: [vitorfleonardo](https://github.com/vitorfleonardo) (Mockups)

  <strong> Todos Alunos de Engenharia de Software da UnB </strong>

Contribuições adicionais são bem-vindas! Sinta-se à vontade para abrir issues, propor novas funcionalidades ou enviar pull requests.

## Licença

Este projeto é licenciado sob a [Licença MIT](LICENSE.md).

---

Esperamos que você aproveite construir sobre o Banquete do Monarca! Se tiver alguma dúvida ou sugestão, por favor, não hesite em entrar em contato.


Licença
Este projeto é licenciado sob a Licença MIT.
