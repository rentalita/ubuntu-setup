node default {
     include lighttpd
     include django
}

node /^(?!.*santiago).*$/ inherits default {
     include lighttpd::dev
     include django::dev
     include nginx::dev
}
