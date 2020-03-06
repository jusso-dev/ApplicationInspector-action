FROM alpine:3.9.4

COPY entrypoint.sh /entrypoint.sh
COPY AppInspector /AppInspector

ENTRYPOINT ["/entrypoint.sh"]