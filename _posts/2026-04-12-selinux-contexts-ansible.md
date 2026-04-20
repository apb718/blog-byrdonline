---
layout: post
title: "Managing SELinux contexts with rhel-system-roles"
published: true
date: 2026-04-12
categories: [Ansible]
tags: [ansible, selinux, rhce, rhel]
description: Walking through sefcontext tasks, idempotency patterns, and where the documentation actually lives.
---

Getting SELinux file contexts right in Ansible is one of those things that looks simple until it isn't.

## The problem with `command` and `semanage`

Running `semanage fcontext` directly via the `command` module works, but it's not idempotent by default. You'll need a `creates:` guard or a `changed_when: false` override, or you'll get a changed task on every run even if the context is already set.

## Using `community.general.sefcontext`

The cleaner path is the dedicated module:

```yaml
- name: set custom fcontext for app directory
  community.general.sefcontext:
    target: '/srv/myapp(/.*)?'
    setype: httpd_sys_content_t
    state: present
  notify: restorecon app dir
```

The module handles idempotency for you. Pair it with a handler that runs `restorecon` — the module only updates policy, not filesystem labels on existing files.

## Where to look things up

```
ansible-doc community.general.sefcontext
man semanage-fcontext
```
