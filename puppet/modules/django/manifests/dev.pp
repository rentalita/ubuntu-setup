class django::dev inherits django {
  include python::dev
  include lighttpd::dev

  package {
    "python-django-doc":
      ensure => latest,
      provider => apt;
  }
}
