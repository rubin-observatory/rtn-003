# The table summary in 135 has some references .. so caption needs editing.
CLINE=`grep -n caption dmtn-135/opsSumUSDF.tex | cut -f1 -d':'`
HLINE=$(($CLINE - 1))
TLINE=$(($CLINE + 1))

FILE="summary.tex"

head -$HLINE dmtn-135/opsSumUSDF.tex  >  $FILE
echo "\\caption\{Operations costs summary table from DMTN-135 " >> $FILE
tail +$TLINE dmtn-135/opsSumUSDF.tex >> $FILE

