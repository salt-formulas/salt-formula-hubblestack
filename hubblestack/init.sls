{%- if pillar.hubblestack is defined %}
include:
{%- if pillar.hubblestack.nova is defined %}
- hubblestack.nova
{%- endif %}
{%- if pillar.hubblestack.pulsar is defined %}
- hubblestack.pulsar
{%- endif %}
{%- if pillar.hubblestack.nebula is defined %}
- hubblestack.nebula
{%- endif %}
{%- endif %}
