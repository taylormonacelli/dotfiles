(ensure-package-installed 'org)

(setq js-indent-level 2)
(setq org-adapt-indentation nil)
(setq org-src-preserve-indentation t)
(setq org-confirm-babel-evaluate nil)
(setq org-special-ctrl-a/e nil)
(setq org-log-done t)
(setq org-babel-python-command "/usr/local/bin/python3")

(org-babel-do-load-languages
 'org-babel-load-languages
 '((ruby . t)
   (shell . t)
   (python . t)
   (js . t)
   (java . t)))

(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(define-key global-map "\C-cr" 'org-mark-ring-goto)

(defun reformat-paragraph-with-line-spacing()
  "do mything"
  (interactive)
  (catch 'mytag
    (progn
      (show-all)
      (org-beginning-of-line)
      (if (looking-at "\\*+[[:space:]]+")
          ;; dealing with lists
          (progn
            (next-line)
            (throw 'mytag "non-local exit value")))
      (if (looking-at "[[:space:]]*\n\\*+[[:space:]]+")
          ;; dealing with lists
          (progn
            (re-search-forward "^\\*")
            (next-line)
            (throw 'mytag "non-local exit value")))
      (if (looking-at "[[:space:]]*\\(-\\|[[:digit:]]\\)")
          ;; dealing with lists
          (progn
            (org-mark-element)
            (org-forward-element)
            (throw 'mytag "non-local exit value")))
      (if (looking-at "\\*+[[:space:]]")
          (progn
            (next-line)
            (throw 'mytag "non-local exit value")))
      (if (looking-at "#")
          (progn
            (org-forward-element)))
      (progn
        (delete-horizontal-space)
        (open-line 1)
        (forward-char)
        (fill-paragraph)
        (forward-line -1)
        (delete-blank-lines)
        (delete-blank-lines)
        (open-line 1)
        (org-forward-sentence)
        (delete-horizontal-space)
        (open-line 2)
        (forward-char)
        (forward-char)
        (fill-paragraph)
        (forward-line -1)
        (delete-blank-lines)
        (delete-blank-lines)
        (open-line 1)))))

(with-eval-after-load 'org
  (bind-key "C-^" #'reformat-paragraph-with-line-spacing org-mode-map))

(defun taylor-org-mode-wrap-block-in-example-markdown()
  "taylor-org-mode-wrap-block-in-example-markdown"
  (interactive)
  (progn
    (kill-region)
    (open-line)
    (self-insert-command)
    (indent-for-tab-command)
    (yank)
    (delete-blank-lines)
    (delete-blank-lines)
    (next-line)
    (open-line)
    (next-line)
    (previous-line)
    (delete-blank-lines)
    (delete-blank-lines)
    (open-line)
    (next-line)))

(provide 'user-init-org)
