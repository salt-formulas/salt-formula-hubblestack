
hubblestack:
  nova:
    saltenv: base
    module_dir: salt://hubblestack/hubblestack_nova
    profile_dir: salt://hubblestack/hubblestack_nova_profiles
    '*':
      - cve.scan-v2
      - network.ssh
