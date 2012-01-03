class lighttpd {
  include www

  package {
    "spawn-fcgi":
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
      require => Package["lighttpd"];
  }
}
