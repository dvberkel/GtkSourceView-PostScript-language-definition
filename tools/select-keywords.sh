#! /usr/bin/env sh

# This script extracts appendix F from the Postscript Language Reference Manual
# found at www.adobe.com/products/postscript/pdfs/PLRM.pdf

if [ $# -ne 2 ] 
then
	echo "usage: $0 <input> <output>";
	exit;
fi

start=809
finish=813

gs -sDEVICE=pdfwrite -dNOPAUSE -dBATCH -dSAFER -dFirstPage=$start -dLastPage=$finish -sOutputFile=$2 $1
