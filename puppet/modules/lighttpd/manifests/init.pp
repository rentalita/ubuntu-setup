class lighttpd {
  package {
    "spawn-fcgi":
      ensure => latest,
      provider => apt;
  }
  package {
    "ssl-cert":
      ensure => latest,
      provider => apt;
  }
  package {
    "lighttpd":
      ensure => latest,
      provider => apt,
      require => Package["spawn-fcgi", "ssl-cert"];
  }

  service {
    "lighttpd":
      enable => false,
      ensure => stopped,
      provider => debian,
      require => Package["lighttpd"];
  }
}
