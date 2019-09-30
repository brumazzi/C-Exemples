" vim make file generator
" download vim compiler in 'https://github.com/brumazzi/Vim-Code-Compile.git'

let g:make = "cmake"
let g:make_version = "3.13.2"
let g:project = "3D-Wallpaper"
let g:libs = "GL GLU X11 SDL"
let g:path = ["."]
let g:src = ["gl_init.c  gl_light.c  cvector.c  main.c  wavefront.c"]
let g:out = ["3d-wallpaper"]
