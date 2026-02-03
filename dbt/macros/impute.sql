{% macro impute(col) %}
    coalesce({{ col }}, avg({{ col }}) over ())
{% endmacro %}