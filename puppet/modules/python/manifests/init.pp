class python {
    package {
        "python-setuptools":
            ensure => latest,
            provider => apt;
    }
    package {
        "python-pip":
            ensure => latest,
            provider => apt;
    }
    package {
        "python-nose":
            ensure => latest,
            provider => apt;
    }
    package {
        "python-coverage":
            ensure => latest,
            provider => apt;
    }
}
