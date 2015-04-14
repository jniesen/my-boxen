include cassandra
include icu4c
include java
include redis
include sysctl
include vagrant
include vim
include tmux

nodejs::version { 'v0.12.0': }

class { 'python::global':
  version => '2.7.8'
}

postgresql::db { 'sonar_development': }
postgresql::db { 'sonar_test': }

ruby::version { '2.1.3': }

vagrant::plugin { 'aws': 
  version => '0.6.0',
}

vim::bundle { [
  'scrooloose/nerdtree',
  'scrooloose/syntastic',
  'altercation/vim-colors-solarized',
  'kien/ctrlp.vim',
  'godlygeek/tabular',
  'rodjek/vim-puppet',
]: }
