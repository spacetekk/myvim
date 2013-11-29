if !exists('loaded_snippet') || &cp
    finish
endif

function! Count(haystack, needle)
    let counter = 0
    let index = match(a:haystack, a:needle)
    while index > -1
        let counter = counter + 1
        let index = match(a:haystack, a:needle, index+1)
    endwhile
    return counter
endfunction

function! DjangoArgList(count)
    " This needs to be Python specific as print expects a
    " tuple and an empty tuple looks like this (,) so we'll need to make a
    " special case for it
    let st = g:snip_start_tag
    let et = g:snip_end_tag
    if a:count == 0
        return "()"
    else
        return '('.repeat(st.et.', ', a:count).')'
    endif
endfunction

let st = g:snip_start_tag
let et = g:snip_end_tag
let cd = g:snip_elem_delim

exec "Snippet fcho forms.ChoiceField(choices=".st.et.")".st.et
exec "Snippet fchar forms.CharField(max_length=".st."50".et.st.et.")".st.et
exec "Snippet fbool forms.BooleanField()".st.et
exec "Snippet fint forms.IntegerField(".st.et.")".st.et
exec "Snippet fdate forms.DateField(".st.et.")".st.et
exec "Snippet ffbool FoundationBooleanField(label=_('".st.et."')".st.et.")".st.et
