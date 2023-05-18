## Provisionamento de Graylog em Docker Compose com Vagrant

**Dependências**

- VirtualBox
- Vagrant
- Utilitário _pwgen_ 

**Links**

- [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- [Vagrant](https://www.vagrantup.com/)
- [PWgen](https://pwgen.io/pt/)

**Instalação**

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
cd Vagrant-Docker-Graylog.git
```

**Modifique os arquivos ``.env`` com os comandos abaixo, que também estão indicados lá no arquivo. Atualize o arquivo com o resultado das saídas, da maneira que está indicada lá**

```shell
pwgen -N 1 -s 96
```

```shell
echo -n SUASENHA | shasum -a 256
```

**Se for necessário, modifique as instruções no ``Vagrantfile``, como o nome da placa de rede, a rede interna e os recursos da Vagrant. Para efetuar as modificações, caso tenha o VsCode instalado, utilize o comando abaixo para abrir no seu diretório atual nele**

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

**Execute o arquivo "docker-compose.yml", visualizando os Logs**
```shell
docker compose up
```

**OU, execute o arquivo "docker-compose.yml" em Background**
```shell
docker compose up -d
```

**Depois de alguns instantes, tente acessar o Graylog**

```shell
http://IP-DA-VAGRANT:9000
```