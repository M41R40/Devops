# CAIXA-DE-FERRAMENTAS-DEVOPS (MINHAS ANOTAÇÕES)
Com essas anotações pretendo praticar e aprender sobre as ferramentas mais utilizadas 
pelos DEVOPS. 

## INSTALANDO O GIT. 
Eu já tenho uma conta no git, segue lá **M41R40**
Eu utilizo o ubuntu, então usei o comando no terminal na minha area de trabalho:


```bash
sudo apt-get install git-core
```


Depois configurei o nome de usuario e o email com os comandos:


```bash
git config --global user.name "usuario"
git config --global user.email "emaildogit"
```

Eu já tinha um repositorio no git para este curso, mas se quiser criar no seu desktop umas pasta unica, use o comando:


```bash
mkdir DEVOPS
```

Para subir os arquivos para o git, você precisa localizar nas configurações do git as SSH-keys, adicionar lá e gerar um par de chaves na sua máquina no diretório ~/.ssh  caso ainda não tenha crie com o comando:


```bash
ssh-keygen
```
- adicione o nome do sistema operacional ao qual usa, caso voce tenha varios, vai conseguir se localizar com mais facilidade, clique enter para as outras informações, deixando em branco. 

Depois leia a chave, copie todo o texto e cole lá no aonde o git solicita a nova SSH-Key.


```bash
cat ~/.ssh nomedasuachave.pub
```

É importante lembrar que se sua pasta é nova, voce deve inicializar o git nela com o comando:


```bash
git init
```

Agora adicione a pasta ao git com o comando:


```bash
git add nomedoarquivo/pasta
```

Comite o arquivo para deixar registrado no historico de versões com o comando:


```bash
git commit -m "a mensagem que quiser"
```

Agora para subir o arquivo use o comando:


```bash
git push -u origin
```

Eu precisei de um comando a mais:

```bash
git pull
```

Qualquer duvida use este comando milagroso:

> ele vai orientar como esta o arquivo, e quais são os próximos passos.


```bash
git status
```

Atualize sua pagina no git, dentro do repositorio e terá novos arquivos:

![](./imagens/git.png)

## INSTALANDO O VIRTUAL BOX

Para executar os ambientes que criaremos com o vagrant, precisamos de um aplicativo, a minha escolha será o VirtualBox, mas existem outros, fica a seu critério. Ele é OpeSource :heart_eyes:


Você consegue baixar o VirtualBox de acordo com seu sistema operacional em :

```html
https://www.virtualbox.org/
```

Você vai precisar tambem de uma extensão.

Esta disponivel no link:

```html
https://download.virtualbox.org/virtualbox/6.1.30/Oracle_VM_VirtualBox_Extension_Pack-6.1.30.vbox-extpack
```

Eu precisei atualizar meu sistema operacional com os comandos, para o Virtual Box iniciar:

```bash
sudo apt update
sudo apt upgrade
```

Olha que gracinha a interface do VirtualBox. :satisfied:

![](./imagens/virtual.png)

### INSTALANDO UMA ISO DO UBUNTU. 

Uma ISO, é uma imagem de um sistema operacional pronto, facil de instalar, nesta vamos instalar o ubuntu, disponivel no site deles em:

```html
https://releases.ubuntu.com/18.04.6/ubuntu-18.04.6-live-server-amd64.iso?_ga=2.202179031.718787446.1639687321-193693467.1639687321
```

Lá no virtual box, você vai clicar em novo;

- colocar o nome ubuntu;
- escolher tipo linux;
- versão ubuntu 64 bits;
- clique em próximo;
- tamanho 1024 mesmo;
- clique em próximo;
- vai criar um disco rígido virtual agora;
- clique em criar;
- escolha VMDK;
- escolha dinamicamente alocado e próximo;
- 10,00 GB tá bom, clique em criar. 

> Adicionando a ISO do ubuntu.

- dois cliques em cima da máquina nova;
- aparecerá uma caixa para selecionar a imagem iso baixada;
- configure a máquina conforme sua necessidade e com seu nome. 

OBS: É muito trabalhoso na minha humilde opinião, mas é ótimo para o aprendizado. 


![](./imagens/ubuntu2.png)



## INSTALANDO O VAGRANT


Para ter um ambiente de produção precisamos desta ferramenta, conciliada a um aplicativo de virtualização de máquinas como o VirtualBox ou VMWare, o Vagrant é uma ferramenta de provisionamento de maquinas virtuais, ela cria uma imagem de um disco em uma pasta, com descrição de processador, memória, discos e conexões. 
