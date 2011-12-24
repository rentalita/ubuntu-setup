class django {
    package {
        "python-django":
            ensure => latest,
            provider => apt;
    }
    package {
        "python-django-south":
            ensure => latest,
            provider => apt;
    }
    package {
        "python-django-collector":
            ensure => latest,
            provider => apt;
    }
    package {
        "django-tastypie":
            ensure => latest,
            provider => pip;
          # pip install --user ???
    }
    package {
        "python-dateutil":
            ensure => latest,
            provider => apt;
          # precise
          # required by tastypie
    }
    package {
        "python-mimeparse":
            ensure => latest,
            provider => apt;
          # precise
          # required by tastypie
    }
}
