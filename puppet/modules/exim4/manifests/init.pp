class exim4 {

  package {
    "exim4":
      ensure => latest,
      provider => apt;
  }

  service {
    "exim4":
      enable => true,
      ensure => running,
      require => Package["exim4"];
  }
}
