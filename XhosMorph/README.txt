README 
Install directions for XhosMorph 1.0
Developed by Kaitlyn Price, 2011

1. Download the finite state toolkit from fsmbook.com
	a. Click on the link for New Software and accept the agreement
	b. Download the binaries for your operating system

2. Uncompress the folder containing the XFST binaries

3. Download XhosMorph1.0.zip

4. Unzip XhosMorph1.0.zip to the same folder as your XFST 
binaries

!!!....IF YOU ARE USING MAC OS OR LINUX….!!!
!!!…If you are using Windows, skip to step 14…!!!
5. Open the file called xhRules.fst

6. Find the two lines marked by a comment to change

7. Change the line that reads "read lexc < xhosa.Lex;" to "read lexc < [full path of xhosa.lex];"

8. Change the line that reads "source guess.fst;" to "source [full path of guess.fst];"

9. Save and close xhRules.fst

10. Open the file called guess.fst

11. Find the line marked by a comment to change

12. Change the line that reads "read lexc < xhosa.Lex;" to "read lexc < [full path of xhosa.lex];"

13. Save and close guess.fst

!!!….END OF MAC/LINUX INSTRUCTIONS….!!!

14. Execute the xfst binary (called xfst)

15. Macs/Linux: Type in to the terminal that is running xfst "source [full path of xhRules.fst];"
Windows: Type into the command prompt that is running xfst "source xhRules.fst;"

16. At this point, the lexicon file, guesser, and rule set should automatically compile into one finite state transducer. Email me if you have any issues with compilations (kprice@oberlin.edu)

17. To test individual words, type "apply up [word]". You should receive a list of grammatically accurate possible morphologies. In most cases, the word with the most number of affixes is correct. 

18. To test batch files that are already tokenized, you must first follow all steps outlined above. Next, close xfst and open the binary called lookup.

19. Open a terminal and change directories to the directory where all of the xfst tools and files are stored

20. For Linux/Mac: type in "cat [name of file] | ./lookup –flags TT -f xhStrat.fst > [output file name]"
For Windows: type in "type [name of file] | lookup –flags TT –f xhStrat.fst > [output file name]”

21. Open your output file to view your results
