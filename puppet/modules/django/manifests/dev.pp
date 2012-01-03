class django::dev inherits django {
    package {
        "python-django-doc":
            ensure => latest,
            provider => apt;
    }
}
