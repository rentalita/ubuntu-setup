class lighttpd::dev {
  package {
    "lighttpd-doc":
      ensure => latest,
      provider => apt;
  }
}
