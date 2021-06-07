(defun okta-to-org (start end)
  (interactive "r")
  (let* ((lines (split-string (buffer-substring-no-properties start end) "\n"))
         tokens
         (table
          (mapconcat
           'identity (loop for line in lines
                           do
                           (setq tokens (split-string line))
                           collect
                           (format "|%s %s|%s|"
                                   (nth 0 tokens) (nth 1 tokens)
                                   (nth 2 tokens)))
           "\n")))
    (setf (buffer-substring start end) table)
    (org-table-align)))
