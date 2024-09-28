# Hello App

![Ruby](https://img.shields.io/badge/Ruby-3.3.5-red.svg) ![Rails](https://img.shields.io/badge/Rails-7.2.1-red.svg) ![RSpec](https://img.shields.io/badge/Tests-RSpec-brightgreen.svg) ![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg) ![GitHub Workflow Status](https://github.com/Boutquin/Ruby-On-Rails-7-Tutorial/blob/main/hello_app/.github/workflows/ci.yml/badge.svg) ![Docker](https://img.shields.io/badge/Docker-supported-blue.svg) ![Documentation](https://img.shields.io/badge/Documentation-YARD-blue.svg)

## Table of Contents

- [Hello App](#hello-app)
  - [Table of Contents](#table-of-contents)
  - [Project Description](#project-description)
  - [Features](#features)
  - [Demo](#demo)
  - [Getting Started](#getting-started)
    - [Prerequisites](#prerequisites)
    - [Installation](#installation)
  - [Usage](#usage)
  - [Running the Tests](#running-the-tests)
    - [Running the Test Suite](#running-the-test-suite)
  - [Deployment](#deployment)
  - [CI/CD](#cicd)
  - [Documentation](#documentation)
  - [Additional Features](#additional-features)
  - [Contributing](#contributing)
  - [License](#license)
  - [Acknowledgments](#acknowledgments)

## Project Description

**Hello App** is a simple Ruby on Rails application developed by Pierre G. Boutquin as part of working through the [Ruby on Rails Tutorial](https://www.railstutorial.org) by Michael Hartl. This project serves as an introduction to building Rails applications, demonstrating fundamental concepts and best practices.

As part of the [Ruby On Rails 7 Tutorial](https://github.com/Boutquin/Ruby-On-Rails-7-Tutorial) repository, **Hello App** is one of three applications designed to guide developers through the Rails ecosystem, providing hands-on experience with real-world scenarios.

**Key Features:**

- **Basic Authentication:** Simple user registration and login functionality.
- **Hello World Page:** Displays a personalized greeting message.
- **Responsive Design:** Ensures the application is accessible on various devices.
- **RSpec Testing:** Implements a test suite to ensure application reliability.
- **Continuous Integration:** Utilizes GitHub Actions for automated testing and deployment.
- **Docker Support:** Facilitates containerized development and deployment environments.
- **YARD Documentation:** Provides comprehensive documentation for developers.
- **GitHub Discussions:** Enables community engagement for support and collaboration.

## Features

- **Ruby 3.3.5 & Rails 7.2.1:** Utilizing the latest versions for enhanced performance and features.
- **Databases:**
  - **Development/Test:** SQLite for ease of setup and use.
  - **Production:** PostgreSQL for scalability and reliability.
- **Testing:** RSpec framework for writing and executing tests.
- **Deployment:** Configured for deployment on Heroku with Docker support.
- **CI/CD:** GitHub Actions workflow automates testing and deployment processes.
- **Documentation:** Detailed documentation generated with YARD.
- **Community Support:** GitHub Discussions enabled for collaborative problem-solving and feature planning.

## Demo

*(If available, provide a link to a live demo of the application.)*

## Getting Started

### Prerequisites

Before you begin, ensure you have met the following requirements:

- **Ruby:** Version 3.3.5
- **Rails:** Version 7.2.1
- **Bundler:** For managing gem dependencies.
- **SQLite3:** Installed for development and testing databases.
- **PostgreSQL:** Installed for production database.
- **Docker:** (Optional) For containerized development and deployment.
- **Git:** Version control system installed.

### Installation

1. **Clone the Repository:**

    ```bash
    git clone https://github.com/Boutquin/Ruby-On-Rails-7-Tutorial.git
    cd Ruby-On-Rails-7-Tutorial/hello_app
    ```

2. **Install Dependencies:**

    ```bash
    bundle install
    ```

3. **Set Up the Database:**

    ```bash
    rails db:create
    rails db:migrate
    ```

4. **Start the Rails Server:**

    ```bash
    rails server
    ```

5. **Access the Application:**

    Open your web browser and navigate to `http://localhost:3000`.

## Usage

Once the application is running, you can:

- **Register a New User:** Create an account to access personalized features.
- **View Greeting:** Access the Hello World page to see a personalized greeting.
- **Responsive Navigation:** Navigate seamlessly across different devices.
- **Engage with the Community:** Participate in GitHub Discussions for support and collaboration.

## Running the Tests

Ensuring the reliability and stability of the application is paramount. This project leverages **RSpec**, a powerful testing framework for Ruby, to provide a comprehensive test suite covering various aspects of the application. Below are detailed instructions and best practices for running and managing tests within this project.

### Running the Test Suite

To execute the entire test suite, use the following command:

```bash
bundle exec rspec
```

This command runs all tests located in the `spec/` directory, providing a summary of the results, including the number of tests passed, failed, and any pending.

## Deployment

The application is set up for deployment on [Heroku](https://www.heroku.com/). Follow these steps to deploy:

1. **Login to Heroku:**

    ```bash
    heroku login
    ```

2. **Create a New Heroku App:**

    ```bash
    heroku create hello_app
    ```

3. **Set Up PostgreSQL on Heroku:**

    ```bash
    heroku addons:create heroku-postgresql:hobby-dev
    ```

4. **Deploy the Code to Heroku:**

    ```bash
    git push heroku main
    ```

5. **Run Migrations on Heroku:**

    ```bash
    heroku run rails db:migrate
    ```

6. **Open the Deployed Application:**

    ```bash
    heroku open
    ```

## CI/CD

Continuous Integration and Continuous Deployment are managed using GitHub Actions. The workflow is defined in `.github/workflows/ci.yml` and includes the following steps:

- **Environment Setup:** Configures Ruby and installs dependencies.
- **Database Setup:** Prepares the SQLite and PostgreSQL databases.
- **Running Tests:** Executes the RSpec test suite to ensure code integrity.
- **Deployment:** Automatically deploys to Heroku upon successful tests (if configured).

You can view the status of the CI pipeline via the badges included in the README and the Actions tab of the repository.

## Documentation

Documentation for the project is generated using [YARD](https://yardoc.org/). To generate the documentation, run:

```bash
yard doc
```

The generated documentation will be available in the `doc/` directory.

## Additional Features

- **Docker Support:** The application includes Docker configurations for containerized development and deployment. To build and run the Docker container:

    ```bash
    docker build -t ruby-on-rails-7-tutorial .
    docker run -p 3000:3000 ruby-on-rails-7-tutorial
    ```

- **GitHub Discussions:** Engage with the project community through GitHub Discussions. [Join the discussions](https://github.com/Boutquin/Ruby-On-Rails-7-Tutorial/discussions).

## Contributing

Contributions are welcome! To contribute, please follow these steps:

1. **Fork the Repository.**
2. **Create a New Branch:**

    ```bash
    git checkout -b feature/YourFeature
    ```

3. **Commit Your Changes:**

    ```bash
    git commit -m "Add YourFeature"
    ```

4. **Push to the Branch:**

    ```bash
    git push origin feature/YourFeature
    ```

5. **Open a Pull Request.**

Please ensure your code adheres to the project's coding standards and that all tests pass before submitting a pull request.

## License

This project is licensed under the [MIT License](LICENSE).

## Acknowledgments

- **Michael Hartl:** Special thanks to Michael Hartl for his excellent [Ruby on Rails Tutorial](https://www.railstutorial.org), which provided the foundation for this project.

---

Developed by **Pierre G. Boutquin** while working through the Rails Tutorial by Michael Hartl.
