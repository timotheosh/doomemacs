;;; lang/python/config.el -*- lexical-binding: t; -*-
(setq python-shell-interpreter "ipython")
;; Make available immediately
(use-package! virtualenvwrapper
  :config
  (venv-initialize-interactive-shells) ;; if you want interactive shell support
  (venv-initialize-eshell) ;; if you want eshell support
  ;; note that setting `venv-location` is not necessary if you
  ;; use the default location (`~/.virtualenvs`), or if the
  ;; the environment variable `WORKON_HOME` points to the right place
  (setq venv-location "/home/thawes/.virtualenvs/"))
