class exim4::dev inherits exim4 {

  package {
    "exim4-doc-html":
      ensure => latest,
      provider => apt,
      require => Package["exim4"];
  }
  package {
    "exim4-doc-info":
      ensure => latest,
      provider => apt,
      require => Package["exim4"];
  }
}
