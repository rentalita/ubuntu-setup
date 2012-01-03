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
    "python-django-collector":
      ensure => latest,
      provider => apt,
      require => Package["python-django"];
  }
}
