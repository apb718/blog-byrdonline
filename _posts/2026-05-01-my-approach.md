---
layout: post
title: "My Approach to Self-Study: A Manifesto(?)"
published: true
date: 2026-05-01
categories: [Linux]
tags: [study]
description: My methodology, goals, and aspirations in self-study and career development, circa the time of writing.
---

AI is bad at systems work. That fact is the basis of my career bet.

Since graduating and starting my career I have noticed a gap. Generative AI can handle easy-to-moderate lookups, aggregate information well, and produce decent results in more "pure" software engineering tasks. But in systems administration it frequently gives overcomplicated solutions, presents methodology that no one would actually use in production, or just fails outright. In my testing with current frontier models, scripts generated for a data migration — including backups and restores — did not work and actively contributed to data loss. That is not a minor shortcoming.

I think the reason for this gap is structural. Systems knowledge lives in business contexts, runbooks, and tribal expertise. It is less likely to be published publicly, and when it is, it lacks the surrounding context of _why_ it was done that way. That makes it harder for models to learn from compared to the average software engineering task, where the code itself often tells the full story.

So my conclusion is simple: deep expertise in systems work is durable. The path forward is to learn modern tools, internalize best practices, and work alongside people doing this at a high level.

## Strategy

**Exist around a hyped space, not within it.** The modern tech landscape is dominated by trends. When I was in late high school, software engineering boomed — enrollment surged, bootcamps multiplied, and adjacent fields were neglected. Infrastructure felt left out. Roles like SRE, Systems Engineer, Systems Administrator, and anything in networking have been largely ignored by academia while the push went almost entirely toward SWE. That neglect is an opportunity.

**Prioritize learning over finished products.** AI is a phenomenal learning tool, but it also enables shortcuts that erode actual skill. I have spent weeks working with specific tools only to realize I could not run simple commands without assistance. That was a wake-up call. I now follow a deliberate process:

1. Think about where I might find the information myself — man pages, official docs, RFCs.
2. If I cannot find it, ask AI _where_ to look, not _what the answer is_. The goal is a pointer to static, authoritative documentation.
3. If I still cannot find appropriate documentation, ask for the approach and reverse-engineer how to locate it myself next time.

I use Anki to retain where documentation lives and how to navigate it. This has been one of the most effective changes I have made.

**Follow genuine interest.** I find Linux, HPC, and performance optimization deeply interesting. Setting up and managing environments is fulfilling to me in a way that writing CRUD applications is not. That matters, because this is a long road and motivation needs to come from somewhere real.

## Where I Have Been

- Earned my CompTIA A+ Certification
- Worked as a technician on high-frequency trading servers at colocation facilities
- Currently working as a datacenter technician on market infrastructure
- Earned my RHCSA (Red Hat Certified Systems Administrator) with a perfect score

Each of these built on the last. The A+ got me in the door. HFT hardware work taught me what latency-sensitive environments demand. The datacenter role gave me broader infrastructure exposure. The RHCSA formalized Linux fundamentals I had been building through all of it.

## Where I Am Going

Near term, I am finishing my RHCE (Red Hat Certified Engineer), which focuses on Ansible automation. Alongside that I am working through Brendan Gregg's _Systems Performance_ to build a foundation in observability and performance analysis.

After that, I am considering the CCNA for networking depth, and pursuing the RHCA (Red Hat Certified Architect) with specialties in performance tuning and troubleshooting.

The long-term goal is to work in a high-ownership, high-performance systems environment doing deep, knowledge-intensive tuning work — the kind of role where expertise compounds and shortcuts do not survive.