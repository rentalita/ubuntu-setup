class lighttpd::dev inherits lighttpd {
  package {
    "lighttpd-doc":
      ensure => latest,
      provider => apt;
  }
}
