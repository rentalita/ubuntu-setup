class django {
  package {
    "python-flup":
      ensure => latest,
      provider => apt;
  }
  package {
    "python-django":
      ensure => latest,
      provider => apt,
      require => Package["python-flup"];
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
