class sqlite3::dev inherits sqlite3 {

  package {
    "sqlite3-doc":
      ensure => latest,
      provider => apt,
      require => Package["sqlite3"];
  }
}
