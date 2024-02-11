#
# VARIABLES
#

TARGET_DIRECTORY=metaprogramming

#
# Genera la presentación
#
slides:
	pdflatex -shell-escape \
	-output-directory=./$(TARGET_DIRECTORY) ./$(TARGET_DIRECTORY)/presentacion.tex

view:
	evince metaprogramming/presentacion.pdf

clean:
	rm -rf \
	./$(TARGET_DIRECTORY)/*.aux ./$(TARGET_DIRECTORY)/*.log \
	./$(TARGET_DIRECTORY)/*.nav ./$(TARGET_DIRECTORY)/*.out \
	./$(TARGET_DIRECTORY)/*.snm ./$(TARGET_DIRECTORY)/*.toc