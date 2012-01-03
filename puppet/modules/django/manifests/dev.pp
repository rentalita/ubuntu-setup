class django::dev inherits django {
  include python::dev
  include lighttpd::dev
  include exim4::dev
  include sqlite3::dev

  package {
    "python-django-doc":
      ensure => latest,
      provider => apt;
  }
}
