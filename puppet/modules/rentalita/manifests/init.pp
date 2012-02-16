class rentalita {
  include django

  package {
    "python-scrapy":
      ensure => latest,
      provider => apt,
      require => Package["python-django"];
  }
  package {
    "python-reportlab-accel":
      ensure => latest,
      provider => apt,
      require => Package["python-django"];
  }
  package {
    "django-collector":
      ensure => latest,
      provider => pip,
      require => Package["python-django"];
  }
}
