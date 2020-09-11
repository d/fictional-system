FROM ubuntu:focal AS base
RUN apt-get update -q
RUN apt-get update -q && \
	env DEBIAN_FRONTEND=noninteractive apt-get install -y \
	bear \
	ccache \
	cmake \
	git \
	jq \
	ninja-build \
	parallel \
	clang-10 \
	clang-format-10 \
	clang-tidy-10
FROM base AS test
COPY test.bash /
RUN /test.bash
CMD true
FROM base
