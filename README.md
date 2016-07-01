# elixir-dev-env
A Possible Elixir Development Environment for Windows

Prerequisites:
* Vagrant
* VirtualBox
* gem librarian-puppet

1. gem install librarian-puppet
2. mkdir c:/tmp
3. cd environments\production\
4. librarian-puppet install
5. cd ..\..\
6. vagrant up
7. vagrant ssh
8. export DISPLAY=10.0.2.2:0
9. emacs
