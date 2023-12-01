<a name="readme-top"></a>
<div align="center">

  <h1><b>Rails Purse App</b></h1>

</div>

# 📗 Table of Contents

- [📗 Table of Contents](#-table-of-contents)
- [📖 Rails Purse ](#-rails-purse-)
  - [🛠 Built With ](#-built-with-)
    - [Tech Stack ](#tech-stack-)
    - [Key Features ](#key-features-)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Usage](#usage)
    - [Tests](#tests)
  - [👥 Author ](#-author-)
  - [🔭 Future Features ](#-future-features-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [🙏 Acknowledgments ](#-acknowledgments-)
  - [📝 License ](#-license-)

# 📖 Rails Purse <a name="about-project"></a>

This is a **Rails Purse App** created with Ruby on Rails + Postgresql, as a Rails Solo Capstone Project.

This is a transaction app, where users can sign up to organize expenses into different group, and add completed purchases for each created group, where they can see how much money they sent on each group. 

Without logging in or signing up no pages are publicly available. 

[Demo](https://rails-purse.onrender.com)

[Video](https://www.loom.com/share/54a1c42817cb4d82a6b8bf4afbf18ec6?sid=a16ba535-9083-4ce3-8fe3-ca98d84a47db)

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
<summary>Ruby</summary>
  <ul>
    <li>
      <a href="https://www.ruby-lang.org/es/">Ruby</a>
    </li>
  </ul>
</details>

<details>
<summary>Rails</summary>
  <ul>
    <li>
      <a href="https://guides.rubyonrails.org/">Guides</a>
    </li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<details>
<summary>RSpec</summary>
  <ul>
    <li><a href="https://hackernoon.com/how-to-write-your-first-tests-using-rspec-in-rails-applications-hhfk2bqs">In Rails</a></li>
  </ul>
</details>

<details>
<summary>Devise</summary>
</details>

<details>
<summary>Cancancan</summary>
</details>

<details>
<summary>Linters</summary>
  <ul>
    <li><a href="https://github.com/microverseinc/linters-config/tree/master/ror">RoR linters</a></li>
  </ul>
</details>

### Key Features <a name="key-features"></a>

- **Sign-up**
- **Add new group**
- **Add new purchase**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 💻 Getting Started <a name="getting-started"></a>

This repository includes files with Ruby language.

### Prerequisites

In order to run this project you need to have install:
- Ruby check [this](https://www.ruby-lang.org/en/) to install it.
- Rails check [this](https://www.postgresql.org/) to install it.
- Postgresql check [this](https://guides.rubyonrails.org/) to install it.

### Setup

Clone this repository to your desired folder by opening the terminal and running the following command:

```sh
  git clone git@github.com:hajnaloltyan/rails-purse-app.git
```

### Usage

Create the database and start the app:

```sh
  rails db:create
  rails db:migrate
  rails server
```
Navigate to http://localhost:3000 and see the functional app.

For linter errors:

```sh
  rubocop
```

### Tests

For running tests:

```sh
  rspec
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 👥 Author <a name="authors"></a>

👤 **Hajnalka Oltyan**

- GitHub: [@hajnaloltyan](https://github.com/hajnaloltyan)
- LinkedIn: [Hajnal Oltyan](https://www.linkedin.com/in/hajnaloltyan)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🔭 Future Features <a name="future-features"></a>

- [ ] **Adding more details into each purchase**
- [ ] **Tracking not just the expenses but also incoming money**

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## ⭐️ Show your support <a name="support"></a>

If you like this project you could clone the repo and work with it or do the changes in a new branch. Also you could let a message with your thoughts.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 🙏 Acknowledgments <a name="acknowledgements"></a>

I would like to thank Microverse for providing the necessary resources for this project.

Original design idea by [Gregoire Vella on Behance](https://www.behance.net/gregoirevella).

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>