class django::dev {
    package {
        "python-django-doc":
            ensure => latest,
            provider => apt;
    }
}
