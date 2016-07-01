class elixir_dev_env {
  include apt

  apt::key { "erlang-solutions-key":
    id => '434975BD900CCBE4F7EE1B1ED208507CA14F4FCA',
    ensure => 'present',
    source => 'https://packages.erlang-solutions.com/ubuntu/erlang_solutions.asc',
  }

  apt::source { "erlang-solutions-source":
    location => 'http://binaries.erlang-solutions.com/debian',
    release => 'jessie',
    repos => 'contrib',
    ensure => 'present',
  }

  exec { 'apt-get-update':
    command => '/usr/bin/apt-get update',
    require => [
      Apt::Source['erlang-solutions-source'],
      Apt::Key['erlang-solutions-key'],
    ],
  }

  package { ['emacs', 'libglu1-mesa', 'unifont', 'git', 'esl-erlang', 'elixir']:
    ensure => present,
    require    => Exec['apt-get-update'],
  }

  vcsrepo { '/home/vagrant/.emacs.d':
    ensure   => present,
    provider => git,
    source   => 'https://github.com/syl20bnr/spacemacs',
    require => Package['git'],
    owner => 'vagrant',
  }
}
