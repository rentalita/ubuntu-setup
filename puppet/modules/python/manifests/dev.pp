class python::dev inherits python {

  package {
    "python-doc":
      ensure => latest,
      provider => apt;
  }
  package {
    "pep8":
      ensure => latest,
      provider => apt;
  }
  package {
    "pylint":
      ensure => latest,
      provider => apt;
  }
  package {
    "python-sphinx":
      ensure => latest,
      provider => apt;
  }
}
