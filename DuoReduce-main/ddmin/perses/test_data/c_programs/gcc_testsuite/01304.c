





extern int hist_verify;
extern char *pre_process_line (char*);
extern char* savestring1 (char*, char*, int, int);
extern char* str_cpy (char*, char*);
extern int str_len (char*);
extern char* x_malloc (int);


char *
history_expand_line_internal (char* line)
{
  char *new_line;
  int old_verify;

  old_verify = hist_verify;
  hist_verify = 0;
  new_line = pre_process_line (line);
  hist_verify = old_verify;

  return (new_line == line) ? (char *)str_cpy (x_malloc (1 + str_len (line)), (line)) :
    savestring1 (new_line, line, 0, old_verify+1);
}
