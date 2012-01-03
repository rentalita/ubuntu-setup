class lighttpd::dev inherits lighttpd {
  include www::dev

  package {
    "lighttpd-doc":
      ensure => latest,
      provider => apt,
      require => Package["lighttpd"];
  }
}
