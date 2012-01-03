import "nodes"

package {
  "git":
    ensure => latest,
    provider => apt;
}
package {
  "byobu":
    ensure => latest,
    provider => apt;
}
package {
  "tmux":
    ensure => latest,
    provider => apt;
}
package {
  "ngrep":
    ensure => latest,
    provider => apt;
}
package {
  "exim4":
    ensure => latest,
    provider => apt;
}

service {
  "exim4":
    enable => true,
    ensure => running,
    require => Package["exim4"];
}
