if !exists('loaded_snippet') || &cp
    finish
endif

let st = g:snip_start_tag
let et = g:snip_end_tag
let cd = g:snip_elem_delim

exec "Snippet script <script type=\"text/javascript\" src=\"".st.et."\"> </script>".st.et
exec "Snippet amod (function(){<CR>".st.et."<CR>}) ( );"

exec "Snippet {# {# ".st.et." #}".st.et
exec "Snippet {{ {{ ".st.et." }}".st.et
exec "Snippet {% {% ".st.et." %}".st.et
exec "Snippet url {% url '".st.et." %}".st.et
exec "Snippet now {% now '".st.et." %}".st.et
exec "Snippet firstof {% firstof ".st.et." %}".st.et
exec "Snippet ifequal {% ifequal ".st.et." ".st.et." %}".st.et."{% endifequal %}".st.et
exec "Snippet ifchanged {% ifchanged %}".st.et."{% endifchanged %}".st.et
exec "Snippet regroup {% regroup ".st.et." by ".st.et." as ".st.et." %}".st.et
exec "Snippet ext {% extends '".st.et." %}".st.et
exec "Snippet filter {% filter ".st.et." %}<CR>".st.et."<CR>{% endfilter %}".st.et
exec "Snippet block {% block ".st.et." %}".st.et."{% endblock %}".st.et
exec "Snippet cycle {% cycle ".st.et." as ".st.et." %}".st.et
exec "Snippet if {% if ".st.et." %}".st.et."{% endif %}".st.et
exec "Snippet tns {% trans '".st.et."' %}".st.et
exec "Snippet dbg {% debug %}".st.et
exec "Snippet ifnotequal {% ifnotequal ".st.et." ".st.et." %}".st.et."{% endifnotequal %}".st.et
exec "Snippet with {% with ".st.et." ".st.et." %}".st.et."{% endwith %}".st.et
exec "Snippet inc {% include '".st.et." %}".st.et
exec "Snippet comment {% comment %}".st.et."{% endcomment %}".st.et
exec "Snippet for {% for ".st.et." in ".st.et." %}".st.et."{% endfor %}".st.et
exec "Snippet ssi {% ssi ".st.et." ".st.et." %}".st.et
exec "Snippet widthratio {% widthratio ".st.et." ".st.et." ".st.et." %}".st.et
exec "Snippet load {% load ".st.et." %}"
exec "Snippet csrf {% csrf_token %}"

" django forms in templates
exec "Snippet formfield <label id=\"id_".st."fieldname".et."_label\" for=\"id_".st."fieldname".et."\" {% if form.".st."fieldname".et.".errors %}class=\"invalid\"{% endif %}>".st.et.":&emsp;</label>{{ form.".st."fieldname".et.st.et." }}<br/><br/>".st.et
" Field snippet contributed by Alex Pounds
exec "Snippet field <p><label for=\"id_".st."fieldname".et."\">".st."fieldlabel".et.":</label> {{ form.".st."fieldname".et." }}<CR>{% if form.".st."fieldname".et.".errors %}*** {{ form.".st."fieldname".et.".errors|join:\", \" }} {% endif %}</p>".st.et

" foundation snippets
exec "Snippet fndffield_row <!-- ".st."fieldname".et." --><CR><div class=\"row\"><CR><div class=\"large-12 columns\"><CR><label for=\"id_".st."fieldname".et."\"{% if ".st."form".et.".".st."fieldname".et.".errors %} class=\"error\"{% endif %}>{{ ".st."form".et.".".st."fieldname".et.".label }}</label><CR>{% if ".st."form".et.".".st."fieldname".et.".errors %}<CR>{{ ".st."form".et.".".st."fieldname".et."|add_class:'error' }}<CR><small class=\"error\">{{ ".st."form".et.".".st."fieldname".et.".errors|striptags }}</small><CR>{% else %}<CR>{{ ".st."form".et.".".st."fieldname".et." }}<CR>{% endif %}<CR></div><CR></div><CR>"
exec "Snippet fndffield_2row <!-- ".st."fieldname".et." --><CR><div class=\"row\"><CR><div class =\"large-3 columns\"><CR><label for=\"id_".st."fieldname".et."\" class=\"text-right inline{% if ".st."form".et.".".st."fieldname".et.".errors %} error{% endif %}\">{{ ".st."form".et.".".st."fieldname".et.".label }}</label><CR></div><CR><div class=\"large-8 columns\"><CR>{% if ".st."form".et.".".st."fieldname".et.".errors %}<CR>{{ ".st."form".et.".".st."fieldname".et."|add_class:'error' }}<CR><small class=\"error\">{{ ".st."form".et.".".st."fieldname".et.".errors|striptags }}</small><CR>{% else %}<CR>{{ ".st."form".et.".".st."fieldname".et." }}<CR>{% endif %}<CR></div><div class=\"large-1 columns\">&emsp;</div><CR></div>"
exec "Snippet fndffield_row2 <!-- ".st."fieldname".et." --><CR><div class=\"row\"><CR><div class =\"large-3 columns\"><CR>{% if ".st."form".et.".".st."fieldname".et.".errors %}<CR>{{ ".st."form".et.".".st."fieldname".et."|add_class:'error'|add_class:'right' }}<CR><small class=\"error\">{{ ".st."form".et.".".st."fieldname".et.".errors|add_class:'right'|striptags }}</small><CR>{% else %}<CR>{{ ".st."form".et.".".st."fieldname".et."|add_class:'right' }}<CR>{% endif %}<CR></div><CR><div class=\"large-8 columns\"><CR><label for=\"id_".st."fieldname".et."\"{% if ".st."form".et.".".st."fieldname".et.".errors %} class=\"error\"{% endif %}>".st.et."</label><CR></div><div class=\"large-1 columns\">&emsp;</div><CR></div>"
exec "Snippet fndem <div class=\"large-".st."1".et." columns\">&emsp;</div>"
exec "Snippet fndcheck <!-- ".st."fieldname".et." --><CR><div class=\"row\"><CR><div class =\"large-9 large-offset-3 columns\"><CR>{{ ".st."form".et.".".st."fieldname".et." }}<CR></div></div>"
exec "Snippet fndico <i class=\"".st."foundicon".et.st.et."\"></i>" 
exec "Snippet faico <i class=\"fontawesome-".st.et."\"></i>"
