## Provisionamento de Graylog em Docker Compose com Vagrant

**Dependências**

- VirtualBox
- Vagrant
- Utilitário _pwgen_ 

**Instalação das Dependências**

- Virtuabox: Basta ir na loja, ou [baixar](https://www.virtualbox.org/wiki/Downloads) o pacote no site oficial e efetuar a instalação

- Vagrant: em distribuições Debian: ``apt install vagrant``

- PWgen: em distribuições Debian: ``apt install pwgen``

---
### _**Executando o Projeto**_

**Clone o projeto**

```shell
git clone https://github.com/pedroieremis/Vagrant-Docker-Graylog.git
```

**Navegue até o diretório do projeto clonado**
```shell
cd Vagrant-Docker-Graylog
```

**Modifique o arquivo ``.env`` com os resultados dos comandos abaixo, que também estão indicados lá no arquivo.**

```shell
pwgen -N 1 -s 96
```

O resultado deste acima, você coloca na variável "GRAYLOG_PASSWORD_SECRET", que está localizada no arquivo ".env".

```shell
echo -n <SUASENHA> | shasum -a 256
```

Já o resultado desse comnando acima, você coloca como conteúdo da variável "GRAYLOG_ROOT_PASSWORD_SHA2", também localizada no arquivo indicado anteriormente.

---

**Se for necessário, modifique as instruções no ``Vagrantfile``, como o nome da placa de rede, a rede interna e os recursos da Vagrant. Para agilidade em efetuar as modificações, caso tenha o VsCode instalado, utilize o comando abaixo para abrir o seu diretório atual nele**

```shell
code .
```

**No terminal bash, ou no terminal do VsCode, execute o "build" da instância Vagrant**
```shell
vagrant up
```

**Após conclusão com sucesso, acesse a instância Vagrant**
```shell
vagrant ssh
```

**Execute o comando abaixo no diretório em que está o arquivo "docker-compose.yml". Dessa forma está visualizando os Logs por padrão com o tty travado**
```shell
docker compose up
```

**OU, execute o comando abaixo para realizar em Background**
```shell
docker compose up -d
```

**Depois de alguns instantes, tente acessar o Graylog**

```shell
http://IP-DA-VAGRANT:9000
```