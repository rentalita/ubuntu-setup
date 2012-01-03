class django::dev inherits django {
  include python::dev

  package {
    "python-django-doc":
      ensure => latest,
      provider => apt;
  }
}
