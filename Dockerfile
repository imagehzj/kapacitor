FROM ttbb/base

ARG download=1.6.1_linux_amd64

RUN wget https://dl.influxdata.com/kapacitor/releases/kapacitor-$download.tar.gz  && \
mkdir -p /opt/sh/kapacitor && \
tar -xf kapacitor-$download.tar.gz -C /opt/sh/kapacitor --strip-components 2 && \
rm -rf kapacitor-$download.tar.gz && \
ln -s /opt/sh/kapacitor/usr/bin/kapacitor /usr/bin/kapacitor && \
ln -s /opt/sh/kapacitor/usr/bin/kapacitord /usr/bin/kapacitord && \
ln -s /opt/sh/kapacitor/usr/bin/tickfmt /usr/bin/tickfmt

WORKDIR /opt/sh/kapacitor