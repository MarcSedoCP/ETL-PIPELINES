{% macro convert_price_to_pounds(price_column, exchange_rate) %}

{{ price_column }} * {{ exchange_rate }}

{% endmacro %}
