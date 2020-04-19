# SPDX-FileCopyrightText: 2020 Pier Luigi Fiorini <pierluigi.fiorini@liri.io>
#
# SPDX-License-Identifier: CC0-1.0

FROM python:3.7-alpine

LABEL "repository"="https://github.com/liri-infra/fetch-artifact"
LABEL "homepage"="https://liri.io"
LABEL "maintainer"="Pier Luigi Fiorini <pierluigi.fiorini@liri.io>"

ADD requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt

ADD entrypoint /entrypoint

ENV PYTHONUNBUFFERED=1

ENTRYPOINT ["/entrypoint"]
