class nginx::dev inherits nginx {
  include www::dev

  package {
    "nginx-doc":
      ensure => latest,
      provider => apt,
      require => Package["nginx"];
  }
}
