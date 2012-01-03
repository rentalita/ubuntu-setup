class nginx {
  package {
    "nginx":
      ensure => latest,
      provider => apt;
  }

  service {
    "nginx":
      enable => false,
      ensure => stopped,
      require => Package["nginx"];
  }
}
