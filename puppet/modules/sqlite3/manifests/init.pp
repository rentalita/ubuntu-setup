class sqlite3 {

  package {
    "sqlite3":
      ensure => latest,
      provider => apt;
  }
}
