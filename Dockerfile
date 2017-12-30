FROM hashicorp/terraform:light

LABEL maintainer="Ross Bannerman <ross@bnnr.mn>"

FROM alpine:3.7
RUN apk --no-cache add ca-certificates
COPY --from=0 /bin/terraform /bin/terraform
