class nginx::dev inherits nginx {
  package {
    "nginx-doc":
      ensure => latest,
      provider => apt;
  }
}
