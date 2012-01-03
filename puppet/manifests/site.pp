import "nodes"

file {
  "/etc/apt/apt.conf.d/99local":
    owner  => root,
    group  => root,
    mode   => 644,
    source => "puppet:///modules/apt/etc/apt/apt.conf.d/99local";
}

file {
  "/etc/apt/preferences.d/99local":
    owner  => root,
    group  => root,
    mode   => 644,
    source => "puppet:///modules/apt/etc/apt/preferences.d/99local";
}

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
