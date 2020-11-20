(add-to-list 'load-path "@SITELISP@")
(autoload 'julia-mode "julia-mode" "Julia mode in Emacs" t)
(add-to-list 'auto-mode-alist '("\\.jl\\'" . julia-mode))
