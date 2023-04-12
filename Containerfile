FROM schemers/mit-scheme

RUN apt-get update \
    && apt-get install -y --no-install-recommends rlwrap \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["rlwrap"]
CMD ["scheme"]
