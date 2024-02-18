#
# VARIABLES
#

TARGET_DIRECTORY=metaprogramming

#
# Genera la presentación
#
slides:
	cd $(TARGET_DIRECTORY) && \
	pdflatex -shell-escape \
	-output-directory=. presentacion.tex

view:
	evince ./$(TARGET_DIRECTORY)/presentacion.pdf

clean:
	rm -rf \
	./$(TARGET_DIRECTORY)/*.aux ./$(TARGET_DIRECTORY)/*.log \
	./$(TARGET_DIRECTORY)/*.nav ./$(TARGET_DIRECTORY)/*.out \
	./$(TARGET_DIRECTORY)/*.snm ./$(TARGET_DIRECTORY)/*.toc