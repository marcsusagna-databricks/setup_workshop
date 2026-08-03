# Databricks Setup Workshop

**Disclaimer**

This repository is provided for demo purposes only. It illustrates how to get
started with a Databricks setup that is governed (Unity Catalog) and deployed
through CI/CD using Databricks Asset Bundles. It is not intended for production
use and is not formally supported by Databricks. The code is provided for
exploration and educational purposes only. Use it at your own risk.

## Introduction

This project shows how to develop data products within Databricks following
solid software development lifecycle (SDLC) practices. The goal is to demonstrate
a way of working that:

- **Enables CI/CD** — data products are defined declaratively with Databricks
  Asset Bundles (DABs), so they can be versioned, reviewed, tested, and promoted
  across environments (dev → prod) through automated pipelines.
- **Scales governance** — assets are managed under Unity Catalog, giving
  consistent access control, lineage, and discoverability for every product
  created on the platform.

Together, these practices make it possible to build data products on Databricks
that are reproducible, collaborative, and governed at scale.
