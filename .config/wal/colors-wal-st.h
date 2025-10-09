const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#1d2419", /* black   */
  [1] = "#A6AD6F", /* red     */
  [2] = "#72A783", /* green   */
  [3] = "#D2B59B", /* yellow  */
  [4] = "#BAC38C", /* blue    */
  [5] = "#C4C88C", /* magenta */
  [6] = "#F0D1B2", /* cyan    */
  [7] = "#c6c8c5", /* white   */

  /* 8 bright colors */
  [8]  = "#6a7761",  /* black   */
  [9]  = "#A6AD6F",  /* red     */
  [10] = "#72A783", /* green   */
  [11] = "#D2B59B", /* yellow  */
  [12] = "#BAC38C", /* blue    */
  [13] = "#C4C88C", /* magenta */
  [14] = "#F0D1B2", /* cyan    */
  [15] = "#c6c8c5", /* white   */

  /* special colors */
  [256] = "#1d2419", /* background */
  [257] = "#c6c8c5", /* foreground */
  [258] = "#c6c8c5",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
