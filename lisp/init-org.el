(setq default-directory "~/org/")

(use-package org
  :ensure t
  :init
  (progn
    (setq org-src-fontify-natively t
	  org-log-done t
	  org-startup-with-inline-images t
	  org-display-inline-images t
	  org-toggle-inline-image t
	  org-src-tab-acts-natively t
	  org-directory "~/org"
	  org-default-notes-file (expand-file-name "notes.org" org-directory)
	  org-archive-location (expand-file-name "archive.org::" org-directory)
	  org-agenda-dir "~/org"
	  org-agenda-files '("~/org")
	  org-agenda-compact-blocks t
	  org-agenda-file-todo (expand-file-name "gtd.org" org-agenda-dir)
	  org-agenda-file-note (expand-file-name "notes.org" org-agenda-dir)
	  org-agenda-file-work (expand-file-name "im.org" org-agenda-dir)
	  org-agenda-file-inbox (expand-file-name "inbox.org" org-agenda-dir)
	  org-agenda-file-journal (expand-file-name "journal.org" org-agenda-dir)
	  org-capture-templates
	  '(("b" "Inbox" entry (file+headline org-agenda-file-inbox "Inbox") "* TODO %?\n %i\n" :empty-lines 1)
	    ("n" "Notes" entry (file+headline org-agenda-file-note  "Notes") "* %?\n %i\n %U" :empty-lines 1)
            ("t" "Todos" entry (file+headline org-agenda-file-todo  "Tasks") "* TODO [#B] %?\n %i\n %U" :empty-lines 1)
            ("i" "Ideas" entry (file+headline org-agenda-file-note  "Ideas") "* TODO [#B] %?\n %i\n %U" :empty-lines 1)
            ("w" "Works" entry (file+headlien org-agenda-file-work  "Works") "* TODO [#A] %?\n %i\n %U" :empty-lines 1)
            ("l" "Links" entry (file+headline org-agenda-file-note  "Notes") "* TODO [#C] %?\n %i\n %a \n %U" :empty-lines 1)
	    ("j" "Journal" entry (file+datetree org-agenda-file-journal) "* %?" :empty-lines 1)
            )
	  org-refile-targets '((nil :maxlevel . 5) (org-agenda-files :maxlevel . 5)))))

(use-package org-bullets
  :ensure t
  :init
  (add-hook 'org-mode-hook #'org-bullets-mode))

(use-package org-autolist
  :ensure t
  :init
  (add-hook 'org-mode-hook #'org-autolist-mode))

(use-package org-journal
  :ensure t
  :init
  (require 'org-journal))

(use-package org-mime
  :ensure t
  :init
  (require 'org-mime))

;; org-pomodoro
;; org-projectile
;; persp-mode

(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key (kbd "C-c b") 'org-iswitchb)

(provide 'init-org)
