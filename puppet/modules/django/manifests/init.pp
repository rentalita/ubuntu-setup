class django {
  package {
    "python-django":
      ensure => latest,
      provider => apt,
      alias => "Django";
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
    "git+git://github.com/rentalita/django-userena.git@twitter-bootstrap":
      ensure => latest,
      provider => pip,
      require => Package["python-django"];
  }
}
