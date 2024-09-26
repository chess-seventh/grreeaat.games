# 🌟 GRREEAAT.GAMES PoC Project 🌟

Welcome to the Goood Games Proof of Concept! This repository is a personal
project aimed at enhancing my Go skills while showcasing a fantastic website:
goood.games. 🎮

## 🚀 Project Overview

This project serves as a monorepo containing the following components:

    Dummy Go Applications: A couple of simple Go applications designed to be
    deployed on a Kubernetes cluster. 🐳

    Infrastructure as Code: We'll use Pulumi in Go to manage our
    infrastructure. ☁️
    CI/CD Pipelines: Dagger.io will be utilized for creating CI/CD workflows,
    all written in Go. 🛠️
    Testing Driven Development: The entire codebase will be developed using
    Test-Driven Development (TDD) principles. 🧪
    Nix Environment: Development will take place using Nix to ensure a
    consistent and reproducible environment. 🥳

## 📦 Getting Started

### Prerequisites

    Go (version 1.18+)
    Nix package manager
    Kubernetes cluster (local or cloud-based)
    Pulumi CLI
    Dagger CLI
    GitHub account (for Actions)

### Installation

    Clone the Repository:

```bash
git clone https://github.com/yourusername/goood-games-poc.git
cd goood-games-poc
```

Set Up Nix: Follow the Nix installation guide to get Nix up and running on your machine.

### Install Dependencies

```bash
nix-shell
```

Deploy the Applications: Use Pulumi to deploy the dummy applications to your
Kubernetes cluster:

  ```bash
    pulumi up
  ```

    Run CI/CD: Your GitHub Actions will automatically build and deploy your
    applications when changes are pushed to the repository! 🎉

## 🛠️ Contributing

Feel free to contribute to this project! Here’s how you can help:

    - Fork the repository.
    - Create a new feature branch.
    - Write your code and tests.
    - Open a pull request.

## 📜 License

This project is licensed under the GPL-3.0 License. See the LICENSE file for
more details.

## ✨ Acknowledgements

Special thanks to my friend for the inspiration behind this project! 🌈

## 📞 Get in Touch

If you have any questions, feel free to reach out or create an issue in the
repository. Let’s build something awesome together! 💻✨
