node default {
     include rentalita
}

node /^(?!.*santiago).*$/ inherits default {
     include rentalita::dev
     include nginx::dev
}
