class nginx::dev {
  package {
    "nginx-doc":
      ensure => latest,
      provider => apt;
  }
}
