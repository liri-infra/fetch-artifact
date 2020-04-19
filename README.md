<!--
SPDX-FileCopyrightText: 2020 Pier Luigi Fiorini <pierluigi.fiorini@liri.io>

SPDX-License-Identifier: MIT
-->

# fetch-artifact

Fetch an artifact from a workflow run, even though it's on anothe repository
and extracts it to a path.

Let's suppose that you [upload an artifact](https://github.com/actions/upload-artifact)
of a repository in your organization and want to download it from a workflow
of another repository.

You cannot do that with with the [official action](https://github.com/actions/download-artifact).

## Usage

This is the step you need to add to your job:

```yaml
- name: Fetch artifact
  uses: liri-infra/fetch-artifact
  with:
    github_token: ${{ secrets.GITHUB_TOKEN }}
    repository: octofoo/bar
    workflow_path: .github/workflows/build.yml
    artifact_name: artifacts
    extract_to: /tmp
```
