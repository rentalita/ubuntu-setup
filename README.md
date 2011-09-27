Ubuntu Setup -- Sets up an Ubuntu machine.
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

    ./ubuntu-setup.sh [--extras]

#### OPTIONS

 * `--extras`

This option installs a bunch of additional extra packages, like Emacs
and the Chromium web browser. These are packages that we like to have
around during our day-to-day development activities.

## CHICKEN AND EGG

Before you run `ubuntu-setup.sh` for the very first time, please run:

    sudo apt-get install --no-install-recommends ruby-full

A ruby script is used to update the source lists under
`/etc/apt`. This allows you to select your own preferred package
archive locations. You'll need to install ruby even if you don't
change the defaults. A perl port would be appreciated.

For example, if you're in Chile (super awesome!)...

    cp update-sources.yml.in update-sources.yml

and then replace:

    link: http://archive.ubuntu.com/ubuntu/

with:

    link: http://mirror.netlinux.cl/ubuntu/

## CAVEATS

Ubuntu Setup does muck around with `/etc/apt`. For example, a few
package archive source lists are added (plus their signing keys), and
apt-get's default options are tweaked (e.g. recommended packages are
*not* installed).

The idea is to keep the default as lean-and-mean as possible. Cheaper
disk sizes in the cloud. Quicker backups.

A connection to the the series of tubes is required.

## CONTRIBUTE

https://github.com/software6/ubuntu-setup

## LICENSE

Ubuntu Setup is brought to you by [Software 6](http://software6.net/)
under the MIT License.
