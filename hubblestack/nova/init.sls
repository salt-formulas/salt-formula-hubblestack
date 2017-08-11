{%- from "hubblestack/map.jinja" import nova with context -%}

/tmp/foo/bar/top.nova:
  file.managed:
    - user: kitchen
    - group: kitchen
    - mode: 666
    - makedirs: True
    - contents: |
        nova:
          '*':
            - cve.scan-v2
            - network.ssh

test_hubble_sync:
  module.run:
    - name: hubble.sync

test_top_nova:
  module.run:
    - name: hubble.top
    - opts: /tmp/foo/bar/top.nova

#salt[hubble.audit]('foo,bar', tags='CIS*')
test_hubble_audit:
  module.run:
    - name: hubble.audit
    - opts: network.ssh

##########################################
# salt 2017.7
# test_top_nova:
#   module.run:
#     hubble.top:
#       opts: /tmp/foo/bar/top.nova
#
# test_hubble_sync:
#   module.run:
#     - hubble.sync
#
# test_hubble_audit:
#   module.run:
#     hubble.audit:
#       opts: cvw.scan-v2
#
