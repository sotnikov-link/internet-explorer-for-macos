# Internet Explorer 11 для MacOS

## Быстрый старт

Для работы всех команд должен быть установлен [Homebrew](https://brew.sh/index_ru)

1. Установка VirtualBox и Vagrant `./install-vagrant.sh`
1. Загрузка образа Windows 7 с IE11 `./download-ie11.sh`
1. Запуск Vagrant с IE11 `vagrant up`

## Подмена DNS в виртуальной машине

После запуска, внутри виртуальной машины нужно выполнить от имени администратора команды в CMD, чтобы адрес app.127.0.0.1.xip.io указывал на IP адрес host-машины

```
echo 10.0.2.2 app.127.0.0.1.xip.io >> \Windows\System32\drivers\etc\hosts
ipconfig /flushdns
```

## Рекомендации

1. Поставить облегченную тему в гостевой машине, чтобы не грузить видеокарту
2. Отключить обновление ОС в гостевой машине через Панель управления

## Учетная запись

| Username | Passwords |
| -------- | --------- |
| IEUser   | Passw0rd! |

## Полезные ссылки

- [VBoxManage](https://www.virtualbox.org/manual/ch08.html)
- [Vagrant Internet Explorer (and Edge) boxes](https://github.com/andornaut/vagrant-internet-explorer)
- [modernIE (Deprecated)](https://app.vagrantup.com/modernIE)
- [Official Microsoft Edge on Windows 10 Vagrant box](https://app.vagrantup.com/Microsoft/boxes/EdgeOnWindows10)
- [Vagrantbox.es](http://www.vagrantbox.es/)
- [Vagrantfile gist](https://gist.github.com/anthonysterling/7cb85670b36821122a4a)

## Ссылки на Vagrant Boxes с IE6–11, MS Edge

Скрипты можно переделать на любой из перечисленых Vargrant Box

- http://aka.ms/ie6.xp.vagrant
- http://aka.ms/ie8.xp.vagrant
- http://aka.ms/ie7.vista.vagrant
- http://aka.ms/ie8.win7.vagrant
- http://aka.ms/ie9.win7.vagrant
- http://aka.ms/ie10.win7.vagrant
- http://aka.ms/ie11.win7.vagrant
- http://aka.ms/ie10.win8.vagrant
- http://aka.ms/ie11.win81.vagrant
- http://aka.ms/msedge.win10.vagrant
