if !exists('loaded_snippet') || &cp
    finish
endif

let st = g:snip_start_tag
let et = g:snip_end_tag
let cd = g:snip_elem_delim

exec "Snippet getuser &JFactory::getUser(".st.et.");".st.et
exec "Snippet getdbo &JFactory::getDBO();".st.et
exec "Snippet getmodel $model = &$this->getModel('".st.et."');<CR>".st.et
exec "Snippet getdoc $document = &JFactory::getDocument();"
exec "Snippet getsession $session = &JFactory::getSession();<CR>".st.et
exec "Snippet jt JText::_('".st.et."')"
exec "Snippet je JError::raiseError(".st."500".et.", ".st.et.");"
exec "Snippet jw JError::raiseWarning(".st."500".et.", ".st.et.");"
exec "Snippet jdie defined('_JEXEC') or die();<CR>"
exec "Snippet jarr JArrayHelper::getValue(".st.et.", '".st.et."', ".st.et.");".st.et
exec "Snippet jri JRequest::getInt('".st.et."', null, '".st."REQUEST".et."');<CR>".st.et
exec "Snippet jrs JRequest::getString('".st.et."', null, '".st."REQUEST".et."');<CR>".st.et
exec "Snippet cnq $col_".st.et." = $this->nq('".st.et."');<CR>".st.et
exec "Snippet seterr $this->setError(".st.et.");<CR>".st.et
