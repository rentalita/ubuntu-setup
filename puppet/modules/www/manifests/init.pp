class www {
  package {
    "ssl-cert":
      ensure => latest,
      provider => apt;
  }
  package {
    "libio-socket-ssl-perl":
      ensure => latest,
      provider => apt;
  }
  package {
    "libwww-perl":
      ensure => latest,
      provider => apt,
      require => Package["libio-socket-ssl-perl"];
  }
  package {
    "libjs-jquery":
      ensure => latest,
      provider => apt;
  }
  package {
    "libjs-jquery-tablesorter":
      ensure => latest,
      provider => apt,
      require => Package["libjs-jquery"];
  }
}
