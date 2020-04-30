wget ftp://ftp.springernature.com/cs-proceeding/llncs/llncs2e.zip
unzip -o llncs2e.zip
# Archive content:
#    fig1.eps
#    history.txt
#    llncs.cls
#    llncsdoc.pdf
#    readme.txt
#    samplepaper.tex
#    splncs04.bst
# Only the llncs.cls is actually needed, therefore we are deleting the rest.
rm fig1.eps
rm history.txt
rm llncsdoc.pdf
rm readme.txt
rm samplepaper.tex
rm splncs04.bst
echo "Removed unneeded files: fig1.eps, history.txt, llncsdoc.pdf, readme.txt, samplepaper.tex, splncs04.bst"
# Remove the archive as that is also not needed anymore
rm llncs2e.zip
echo "Removed the archive: llnc2e.zip"
