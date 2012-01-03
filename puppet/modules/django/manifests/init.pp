class django {
  include python
  include lighttpd
  include exim4

  package {
    "sqlite3":
      ensure => latest,
      provider => apt;
  }
  package {
    "python-flup":
      ensure => latest,
      provider => apt;
  }
  package {
    "python-scrapy":
      ensure => latest,
      provider => apt;
  }
  package {
    "python-reportlab-accel":
      ensure => latest,
      provider => apt;
  }
  package {
    "python-django":
      ensure => latest,
      provider => apt,
      require => Package["sqlite3", "python-flup", "python-scrapy", "python-reportlab-accel"];
  }
  package {
    "python-django-south":
      ensure => latest,
      provider => apt,
      require => Package["python-django"];
  }
  package {
    "python-django-collector":
      ensure => latest,
      provider => apt,
      require => Package["python-django"];
  }
  package {
    "python-dateutil":
      ensure => latest,
      provider => apt;
    # TODO: precise
  }
  package {
    "python-mimeparse":
      ensure => latest,
      provider => apt;
    # TODO: precise
  }
  package {
    "django-tastypie":
      ensure => latest,
      provider => pip,
      require => Package["python-django", "python-dateutil", "python-mimeparse"];
  }
  package {
    "python-imaging":
      ensure => latest,
      provider => apt;
  }
  package {
    "git+git://github.com/rentalita/django-userena.git@twitter-bootstrap":
      ensure => latest,
      provider => pip,
      require => Package["python-django", "python-imaging"];
  }
}
