node default {
     include django
}

node /^(?!.*santiago).*$/ inherits default {
     include django::dev
     include nginx::dev
}
