FROM hashicorp/terraform:light as source

LABEL maintainer="Ross Bannerman <ross@bnnr.mn>"

FROM alpine:latest
RUN apk --no-cache add ca-certificates
COPY --from=source /bin/terraform /bin/terraform
