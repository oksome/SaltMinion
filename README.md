SaltMinion
==========

Docker container with a Minimalist Salt Minion, based on Debian Stable.

´docker pull okso/saltminion´


Dockerfile
---

Edit the `minion` file to your needs, it will be copied to `/etc/salt/minion`.

By default, new minions will start with the role 'new'. You can then target them using Salt to change their role to your desires.

The hostname will be set as the minion's id when running the container (append to `/etc/salt/minion`).
