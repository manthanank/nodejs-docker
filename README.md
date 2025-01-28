# Nodejs Docker

A simple Node.js application containerized with Docker, featuring Express server running on port 3000.

## Prerequisites

- Node.js 18.x
- Docker
- npm

## Project Structure

- [Dockerfile](Dockerfile) - Docker container configuration
- [index.js](index.js) - Express server application
- [package.json](package.json) - Project dependencies and scripts
- [.github/workflows/ci.yml](.github/workflows/ci.yml) - GitHub Actions CI configuration
- [docker-compose.yml](docker-compose.yml) - Docker Compose configuration

## Installation

1. Clone the repository:

    ```sh
    git clone https://github.com/manthanank/nodejs-docker.git
    cd nodejs-docker
    ```

2. Install dependencies:

    ```sh
    npm install
    ```

3. Start the server:

    ```sh
    npm start
    ```

## Docker

1. Build the Docker image:

    ```sh
    docker build -t nodejs-docker .
    ```

2. Run the Docker container:

    ```sh
    docker run -d -p 3000:3000 nodejs-docker
    ```

3. Open the browser and navigate to `http://localhost:3000`.

## Docker Compose

1. Start the application using Docker Compose:

    ```sh
    docker-compose up -d
    ```

2. Open the browser and navigate to `http://localhost:3000`.

## Testing

Currently, there are no tests specified. You can add tests by updating the `test` script in the [package.json](package.json) file and adding test files.

## Continuous Integration

This project uses GitHub Actions for CI. The configuration is in [.github/workflows/ci.yml](.github/workflows/ci.yml). The CI pipeline includes:

- Checking out the code
- Setting up Node.js
- Installing dependencies
- Running tests
- Building the Docker image
- Running the Docker container
- Verifying the Docker container is running

## Troubleshooting

- If you encounter issues with Docker, ensure Docker is running and you have the correct permissions.
- If the application does not start, check the logs for errors:

    ```sh
    docker logs <container_id>
    ```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
