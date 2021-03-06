CODE_LOC="$HOME/Democritus"
TEX_FILE=tex/git.tex

rm $TEX_FILE
touch $TEX_FILE

echo "\\medskip \\noindent" >> $TEX_FILE
echo "Note: our git log is greatly shortened because with few exceptions, we squashed and rebased our commits for a better understanding of our progression." >> $TEX_FILE

echo "\\chapter{Git Logs}" >> $TEX_FILE
echo "\\begin{lstlisting}" >> $TEX_FILE

git --git-dir=$CODE_LOC/.git log --graph >> $TEX_FILE 

echo -e "\n" >> $TEX_FILE
echo "\\end{lstlisting}" >> $TEX_FILE
