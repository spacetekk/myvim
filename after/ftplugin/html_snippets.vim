if !exists('loaded_snippet') || &cp
    finish
endif

let st = g:snip_start_tag
let et = g:snip_end_tag
let cd = g:snip_elem_delim

function! SelectDoctype()
    let st = g:snip_start_tag
    let et = g:snip_end_tag
    let cd = g:snip_elem_delim
    let dt = inputlist(['Select doctype:',
                \ '1. HTML 5',
                \ '2. HTML 4.01',
                \ '3. HTML 4.01 Transitional',
                \ '4. HTML 4.01 Frameset',
                \ '5. XHTML 1.0 Frameset',
                \ '6. XHTML Strict',
                \ '7. XHTML Transitional',
                \ '8. XHTML Frameset'])
    let dts = {1: "<!DOCTYPE html>\n".st.et,
             \ 2: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\"\n\"http://www.w3.org/TR/html4/strict.dtd\">\n".st.et,
             \ 3: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\n\"http://www.w3.org/TR/html4/loose.dtd\">\n".st.et,
             \ 4: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Frameset//EN\"\n\"http://www.w3.org/TR/html4/frameset.dtd\">\n".st.et,
             \ 5: "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Frameset//EN\"\n\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd\">\n".st.et,
             \ 6: "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML Strict//EN\"\n\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n".st.et,
             \ 7: "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML Transitional//EN\"\n\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n".st.et,
             \ 8: "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML Frameset//EN\"\n\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd\">\n".st.et}
    
    return dts[dt]
endfunction

exec "Snippet doct ``SelectDoctype()``"
exec "Snippet doctype <!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Frameset//EN\"<CR><TAB>\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd\"><CR>".st.et
exec "Snippet doc4s <!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\"<CR>\"http://www.w3.org/TR/html4/strict.dtd\"><CR>".st.et
exec "Snippet doc4t <!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"<CR>\"http://www.w3.org/TR/html4/loose.dtd\"><CR>".st.et
exec "Snippet doc4f <!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Frameset//EN\"<CR>\"http://www.w3.org/TR/html4/frameset.dtd\"><CR>".st.et
exec "Snippet docxs <!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML Strict//EN\"<CR>\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\"><CR>".st.et
exec "Snippet docxt <!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML Transitional//EN\"<CR>\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\"><CR>".st.et
exec "Snippet docxf <!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML Frameset//EN\"<CR>\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd\"><CR>".st.et
exec "Snippet head <head><CR><meta http-equiv=\"Content-type\" content=\"text/html; charset=utf-8\" /><CR><title>".st.et."</title><CR>".st.et."<CR></head><CR>".st.et
exec "Snippet script <script type=\"text/javascript\" language=\"javascript\" charset=\"utf-8\"><CR>// <![CDATA[<CR><TAB>".st.et."<CR>// ]]><CR></script><CR>".st.et
exec "Snippet title <title>".st.et."</title>"
exec "Snippet html <html><CR>".st.et."<CR></html>"
exec "Snippet body <body id=\"".st.et."\"><CR>".st.et."<CR></body><CR>"
exec "Snippet nav <nav>".st.et."</nav>".st.et
exec "Snippet article <article>".st.et."</article>".st.et
exec "Snippet header <header>".st.et."</header>".st.et
exec "Snippet footer <footer>".st.et."</footer>".st.et
exec "Snippet section <section".st.et.">".st.et."</section>".st.et
exec "Snippet span <span>".st.et."</span>".st.et
exec "Snippet strong <strong>".st.et."</strong>".st.et
exec "Snippet small <small>".st.et."</small>".st.et
exec "Snippet p <p>".st.et."</p>".st.et
exec "Snippet aside <aside>".st.et."</aside>".st.et
exec "Snippet button <button>".st.et."</button>".st.et
exec "Snippet div <div>".st.et."</div>".st.et
exec "Snippet div <div>".st.et."</div>".st.et
exec "Snippet img <img src=\"".st.et."\" alt=\"".st.et."\"/>"
exec "Snippet scriptsrc <script src=\"".st.et."\" type=\"text/javascript\" language=\"".st.et."\" charset=\"".st.et."\"></script><CR>".st.et
exec "Snippet textarea <textarea name=\"".st.et."\" rows=\"".st.et."\" cols=\"".st.et."\">".st.et."</textarea><CR>".st.et
exec "Snippet meta <meta name=\"".st.et."\" content=\"".st.et."\" /><CR>".st.et
exec "Snippet movie <object width=\"".st.et."\" height=\"".st.et."\"<CR>classid=\"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B\"<CR>codebase=\"http://www.apple.com/qtactivex/qtplugin.cab\"><CR><param name=\"src\"<CR>value=\"".st.et."\" /><CR><param name=\"controller\" value=\"".st.et."\" /><CR><param name=\"autoplay\" value=\"".st.et."\" /><CR><embed src=\"".st.et."\"<CR>width=\"".st.et."\" height=\"".st.et."\"<CR>controller=\"".st.et."\" autoplay=\"".st.et."\"<CR>scale=\"tofit\" cache=\"true\"<CR>pluginspage=\"http://www.apple.com/quicktime/download/\"<CR>/><CR></object><CR>".st.et
exec "Snippet mailto <a href=\"mailto:".st.et."?subject=".st.et."\">".st.et."</a>".st.et
exec "Snippet table <table><CR><thead><CR><tr><CR><th>".st.et."</th><CR></tr><CR></thead><CR><tbody><CR><tr><CR><td>".st.et."</td><CR></tr><CR></tbody><CR></table>"
exec "Snippet link <link rel=\"".st.et."\" href=\"".st.et."\" type=\"text/css\" media=\"".st.et."\" title=\"".st.et."\" charset=\"".st.et."\" />"
exec "Snippet csslink <link rel=\"stylesheet\" type=\"text/css\" href=\"\" />"
exec "Snippet form <form action=\"".st.et."\" method=\"".st.et."\"><CR>".st.et."<CR></form>"
exec "Snippet a <a href=\"".st.et."\">".st.et."</a>".st.et
exec "Snippet input <input type=\"".st.et."\" name=\"".st.et."\" value=\"".st.et."\" ".st.et."/>".st.et
exec "Snippet style <style type=\"text/css\" media=\"screen\"><CR>/* <![CDATA[ */<CR>".st.et."<CR>/* ]]> */<CR></style><CR>".st.et
exec "Snippet base <base href=\"".st.et."\"".st.et." />".st.et
Snippet br <br/>
Snippet li <li><{}></li>
Snippet ul <ul><{}></ul>
Snippet tr <tr><{}></tr>
Snippet td <td><{}></td>
Snippet th <th><{}></th>
Snippet tbody <tbody><{}></tbody>
Snippet thead <thead><{}></thead>
Snippet label <label><{}></label>
Snippet div <div><{}></div>
Snippet dc <div class="<{}>"><{}></div>
Snippet h1 <h1><{}></h1>
Snippet h2 <h2><{}></h2>
Snippet h3 <h3><{}></h3>
Snippet h4 <h4><{}></h4>
Snippet h5 <h5><{}></h5>
Snippet noscript <noscript><{}></noscript>
Snippet option <option><{}></option>
Snippet select <select><{}></select>
Snippet hr <hr/>
