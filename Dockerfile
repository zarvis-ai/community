FROM python:3.5-alpine

RUN pip install sphinx && pip install sphinx_rtd_theme
ADD docs /docs
RUN sphinx-build /docs /build
CMD ["/bin/sh", "-c", "cd /build; python3 -m http.server"]
