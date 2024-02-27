FROM ghcr.io/atopile/atopile-kicad
LABEL AUTHOR Seth Fischer <seth@fischer.nz>
LABEL Description="Extend atopile/atopile-kicad changing atopile working directory"

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh


ENTRYPOINT [ "/entrypoint.sh" ]
