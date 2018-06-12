FROM python:2.7
RUN git clone https://github.com/gopheracademy/container.training /containers
WORKDIR /containers/slides
RUN pip install PyYAML
RUN ./build.sh once
RUN ls -la *.html
