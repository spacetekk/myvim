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

exec "Snippet mmodel class ".st.et."(".st.et."):<CR><CR>".st.et." = ".st.et."<CR><CR>class Meta:<CR>db_table = '".st.et."'<CR>verbose_name = _('".st.et."')<CR>verbose_name_plural = _('".st.et."')"
" model fields
exec "Snippet mman class ".st.et."(models.Manager):<CR><CR>def get_query_set(self):<CR>return ".st.et."(self.model, using=self._db)"
exec "Snippet mqs class ".st.et."(QuerySet):<CR>pass"
exec "Snippet mauto models.AutoField(_('".st.et."')".st.et.")"
exec "Snippet mbig models.BigIntegerField(_('".st.et."')".st.et.")"
exec "Snippet mbool models.BooleanField(_('".st.et."')".st.et.")"
exec "Snippet mchar models.CharField(_('".st.et."'), max_length=".st.et.")"
exec "Snippet mcsi models.CommaSeparatedIntegerField(_('".st.et."'), max_length=".st.et.")"
exec "Snippet mdate models.DateField(_('".st.et."'), auto_now=True".st.et.", auto_now_add=True".st.et.")"
exec "Snippet mdt models.DateTimeField(".st.et.", auto_now=True".st.et." auto_now_add=True".st.et.")"
exec "Snippet mdec models.DecimalField(_('".st.et."'), max_digits=".st."9".et.", decimal_places=".st."2".et.st.et.")"
exec "Snippet memail models.EmailField(_('".st.et."'), max_length=".st.et.")"
exec "Snippet mfile models.FileField(_('".st.et."'), upload_to=".st.et.", storage=".st.et.")"
exec "Snippet mfilep models.FilePathField(_('".st.et."'), path='".st.et."'".st.et.")"
exec "Snippet mfloat models.FloatField(_('".st.et."')".st.et.")"
exec "Snippet mimg models.ImageField(_('".st.et."'), upload_to=".st.et.", storage=".st.et.")"
exec "Snippet mint models.IntegerField(_('".st.et."')".st.et.")"
exec "Snippet mip models.IPAddressField(_('".st.et."')".st.et.")"
exec "Snippet mgip models.GenericIPAddressField(_('".st.et."'), protocol='both'".st.et.")"
exec "Snippet mnull models.NullBooleanField(_('".st.et."')".st.et.")"
exec "Snippet mpint models.PositiveIntegerField(_('".st.et."')".st.et.")"
exec "Snippet mspint models.PositiveSmallIntegerField(_('".st.et."')".st.et.")"
exec "Snippet mslug models.SlugField(_('".st.et."'), max_length=".st.et.")"
exec "Snippet msint models.SmallIntegerField(_('".st.et."')".st.et.")"
exec "Snippet mtext models.TextField(_('".st.et."')".st.et.")"
exec "Snippet mtime models.TimeField(_('".st.et."'), auto_now=True".st.et.", auto_now_add=True".st.et.")"
exec "Snippet murl models.URLField(_('".st.et."')".st.et.")"
exec "Snippet mfor models.ForeignKey(".st.et.", verbose_name=_('".st.et."'))"
" exec "Snippet mfor models.ForeignKey(".st.et.", verbose_name=_('".st.et."'), related_name='".st.et.", on_delete=".st.et.", limit_choices_to=".st.et.")"
exec "Snippet mm2m models.ManyToManyField(".st.et.", verbose_name=_('".st.et."'), related_name='".st.et.", db_table='".st.et.", limit_choices_to={'".st.et.", throught=".st.et.")"
exec "Snippet mo2o models.OneToOneField(".st.et.", verbose_name=_('".st.et."'), primary_key=True".st.et.", related_name='".st.et.", parent_link=True".st.et.")"
" fields kwargs
exec "Snippet blank blank=True".st.et
exec "Snippet nul null=True".st.et
exec "Snippet bnul blank=True, null=True".st.et
