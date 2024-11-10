#!/bin/bash
nuxi generate &&
rm -fr .output/public/{200,404}.html &&
rm -fr .output/public/_nuxt/error-{404,500}.*.css &&
rm -fr .output/public/_nuxt/builds &&
tar cvf - .output/public | xz > build.tar.xz &&
base64 < build.tar.xz > build.tar.xz.base64
