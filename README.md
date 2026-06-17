# Assignment 04 - AI Student Assistant Agent Architecture & Implementation Report
**Course:** AI Agents (L07)  
**Instructor:** Dr. Yoram Segal  
**Submission Date:** June 2026  
**Repository Access:** Public & Verified

---

## 1. Integrated Executive Summary
This report serves as the comprehensive documentation for Assignment 04, successfully implementing an academic-grade document lifecycle managed entirely through an agentic, reproducible workflow. Operating under the structural constraint that no manual text patches are permissible, all typographic layout corrections, Bidirectional (BiDi) text alignments, and compilation anomalies were resolved programmatically by updating specialized system prompt skills and modular document class templates.

The core subject of this development is the **Student Assistant Agent**, an autonomous framework designed to automate student workflows, minimize cognitive fatigue during intense exam periods, and synthesize highly distributed academic materials.

---

## 2. Theoretical Framework: The Three Layers of an AI Agent
Following the structural engineering paradigms introduced in lecture L07, the system architecture is strictly segregated into three independent tactical layers to promote decoupling and environment independence:
1. **The Software Layer:** The immutable, deterministic codebase. This consists of the primary Python execution modules, data parsing algorithms, and underlying API connectors that remain stable across different user environments.
2. **The Skill Layer:** A natural language wrapper constructed directly over the static SDK/API interface. Instead of requiring rigid parameter definitions, this layer leverages the reasoning capabilities of a Large Language Model (LLM) to map natural language commands into accurate software execution flags.
3. **The Agent Layer:** The central cognitive engine. This layer synthesizes the active LLM, tracks the operational history via a dynamic Context Window, and accesses persistent localized semantic records utilizing Vector Retrieval-Augmented Generation (RAG).

---

## 3. Communication Protocols: From Traditional APIs to MCP
Traditional application programming interfaces (APIs) require manual integration paths and rigid schemas that struggle to adapt to live environment modifications. To achieve dynamic scalability, this project integrates the **Model Context Protocol (MCP)**, an open-standard communication protocol introduced by Anthropic. 

By operating a live MCP server environment, the Student Assistant Agent can actively discover system tools, track file states, and interface directly with version control systems (GitHub repositories) dynamically at runtime. This architectural shift bridges the gap between static probabilistic outputs and reliable, deterministic software actions.

---

## 4. Multi-Agent Orchestration & Quality Assurance (QA) Layout
To validate document compilation without human intervention, we implemented a hierarchical multi-agent framework to handle automated layout inspection. The system prevents computation bottlenecks by dividing labor among specialized nodes:

* **Level 0: `qa-super` (Master Orchestrator):** Analyzes the raw LuaLaTeX compiler logs and delegates discovered formatting errors to secondary agents.
* **Level 1: Specialized Sub-Agents:**
  * `qa-bidi`: Validates grammar direction and protects mixed Hebrew-English segments from structural inversions.
  * `qa-table`: Enforces margin safety rules and structural cell borders using the custom `fancytable` parameters.
  * `qa-code`: Evaluates syntax highlighting integrity and line wrap boundaries for code segments wrapped inside `pythonbox` containers.

---

## 5. Verification of Complete Reproducibility (Reproducibility Provenance)
To satisfy the core requirement of complete process reproducibility, all project assets have been successfully staged in this public repository root:
* `main.tex` - Core LaTeX macro architecture containing structural document flows.
* `hebrew-academic-template.cls` - Document Class file handling global typographic rendering attributes.
* `/skills/` - Isolated prompt skill assets hosting the operational instructions for the QA agents.
* `PRD.md`, `PLAN.md`, `TODO.md` - Complete engineering project management schematics.

Compilation validation can be consistently re-executed in any compliant environment via the following standard shell protocol:
```bash
lualatex main.tex
biber main
lualatex main.tex
lualatex main.tex
