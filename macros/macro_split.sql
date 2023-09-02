{% macro split_on_period2(column_name) %}
  split({{ column_name }}, ',')[0]::text as name1
{% endmacro %}