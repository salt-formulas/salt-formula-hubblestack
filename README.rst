
==================================
hubblestack formula
==================================

Hubble is a modular, open-source security compliance framework. The project provides on-demand profile-based auditing,
real-time security event notifications, automated remediation, alerting and reporting.

More information
================

*  https://github.com/hubblestack/hubble-salt

Deviations from hubblestack.io hubble-salt formula
==================================================

As no ``gitfs`` is used paths are shifted from ``salt://`` to ``salt://hubblestack``.

Sample pillars
==============

Required configuration:

.. code-block:: yaml

  hubblestack:
    nova:
      saltenv: base
      module_dir: salt://hubblestack/hubblestack_nova
      profile_dir: salt://hubblestack/hubblestack_nova_profiles



Documentation and Bugs
======================

To learn how to install and update salt-formulas, consult the documentation
available online at:

    http://salt-formulas.readthedocs.io/

In the unfortunate event that bugs are discovered, they should be reported to
the appropriate issue tracker. Use GitHub issue tracker for specific salt
formula:

    https://github.com/salt-formulas/salt-formula-hubblestack/issues

For feature requests, bug reports or blueprints affecting entire ecosystem,
use Launchpad salt-formulas project:

    https://launchpad.net/salt-formulas

Developers wishing to work on the salt-formulas projects should always base
their work on master branch and submit pull request against specific formula.

You should also subscribe to mailing list (salt-formulas@freelists.org):

    https://www.freelists.org/list/salt-formulas

Any questions or feedback is always welcome so feel free to join our IRC
channel:

    #salt-formulas @ irc.freenode.net
    #salt-formulas @ gitter

Read more
=========

* links
