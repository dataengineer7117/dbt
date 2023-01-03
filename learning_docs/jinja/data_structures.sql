{# This refers to a comment #}

{# 1. Variables #}

{% set my_string = 'afaque' %}
{% set my_int = 5 %}

{{ my_string }}
{{ my_int }}
{{ my_string }} and {{ my_int }}


{# 2. Arrays and loops #}

{% set my_animals = ['dog', 'cat', 'tiger', 'lion', 'wolf', 'panther'] %}

{{ my_animals[0] }}

{% for animal in my_animals %}
    My favorite animal is {{ animal }}
{% endfor %}


{# 3. If-else conditions #}

{% set temperature = 45 %}

{% if temperature < 65 %}
    Time for cappucino
{% else %}
    Time for cold brew
{% endif %}


{# 4. Using all together #}

{%- set foods = ['carrot', 'hotdog', 'cucumber', 'bell pepper'] -%}

{%- for food in foods -%}
    {%- if food == 'hotdog' -%}
        {% set food_type='snack' -%}
    {%- else %}
        {% set food_type='vegetable' -%}
    {%- endif -%}

    The humble {{ food }} is my favorite {{ food_type }}

{%- endfor -%}


{# 4. Dictionary #}

{% set websters_dict= {
    'word': 'data',
    'speech_part': 'noun',
    'definition': 'if you know you know'
} -%}

{{ websters_dict['word'] }}
