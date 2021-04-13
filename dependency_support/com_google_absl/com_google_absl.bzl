# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

"""Registers Bazel workspaces for the GNU readline library."""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def com_google_absl():
    maybe(
        http_archive,
        name = "com_google_absl",
        strip_prefix = "abseil-cpp-20210324.0",
        urls = ["https://github.com/abseil/abseil-cpp/archive/refs/tags/20210324.0.zip"],
        sha256 = "11d6eea257cc9322cc49924cf9584dbe61922bfffe3e7c42e2bce3abc1694a1a",
    )
