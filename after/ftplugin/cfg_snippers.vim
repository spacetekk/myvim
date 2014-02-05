if !exists('loaded_snippet') || &cp
    finish
endif

function! SelectRecipe()
    let st = g:snip_start_tag
    let et = g:snip_end_tag
    let cd = g:snip_elem_delim
    let dt = inputlist(['Select recipe:',
                \ '1. template',
                \ '2. cmd',
                \ '3. mkdir',
                \ '4. git',
                \ '5. egg'])
    let dts = {1: "collective.recipe.template\ninput = ".st.et."output=".st.et,
             \ 2: "iw.recipe.cmd\non_install = ".st."true".et."\non_update = ".st."true".et."\ncmds =".st.et,
             \ 3: "z3c.recipe.mkdir\npaths = ".st.et,
             \ 4: "zerokspot.recipe.git\nrepository = ".st.et,
             \ 5: "zc.recipe.egg\ninterpreter = python\neggs = ".st.et}
    return dts[dt]
endfunction

let st = g:snip_start_tag
let et = g:snip_end_tag
let cd = g:snip_elem_delim

exec "Snippet recipe [".st.et."]\nrecipe = ``SelectRecipe()``"
