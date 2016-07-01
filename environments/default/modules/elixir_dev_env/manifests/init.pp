class elixir_dev_env {
  exec { 'apt-get update':
    command => '/usr/bin/apt-get update';
  }

  package { ['emacs', 'libglu1-mesa', 'unifont']:
    ensure => present;
  }
}
