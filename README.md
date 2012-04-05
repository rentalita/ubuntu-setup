Ubuntu Setup -- Sets up an Ubuntu machine using Salt.
===

## RATIONALE

Ubuntu Setup simplifies those tedious tasks you have to repeat each
time you setup a Ubuntu machine. For example, because there's a new
addition to the development team (luckeee!), you're setting up a new
Linode VPS (highly recommended!), or your harddrive died a horrible
death (backups?).

Ubuntu Setup is also meant to "capture" requirements. Debian's
packaging system has made it so incredibly easy to install software
that we're prone to just `sudo apt-get install ...` and then forget
that we did. Which is awesome because as developers we're able to work
with little to no interruption. But the downside is that it's a bitch
to figure out what to tell other people to install when it comes time
to share with them.

We're also of the opinion that using Debian's packaging system over
tools like bundler, pip, npm, maven, or whatever is always the right
thing to do. We've pulled our hair out one too many times trying to
repair a machine that was broken (usually in some really devious
manner) by one of these other package managers. Also, we like to know
that the software we choose to work with actually works and will be
around a while. Getting a piece of software into the Debian archives
is usually a reasonable vetting process.

## RUNNING

    # TODO: Setup salt master and minion.
    ./ubuntu-setup.sh

## CAVEATS

Ubuntu Setup does muck around with `/etc/apt`. For example, a few
package archive source lists are added (plus their signing keys), and
apt-get's default options are tweaked (e.g. recommended packages are
*not* installed).

The idea is to keep the default as lean-and-mean as possible. Cheaper
disk sizes in the cloud. Quicker backups.

A connection to the the series of tubes is required.

## HISTORY

About seven years ago Ubuntu Setup started out as a set of shell
scripts. Since then other people have begun to solve the same problems
in much more sophisticated ways. A swtich to Chef seemed looked like
nothing more than swapping bash for ruby. We like Puppet's declarative
syntax, but it makes simple tasks hard. We've been quite pleased with
[Salt](http://saltstack.org/).

## CONTRIBUTE

https://github.com/rentalita/ubuntu-setup

## LICENSE

Ubuntu Setup is brought to you by [Rentalita](http://rentalita.com/)
under the MIT License.
