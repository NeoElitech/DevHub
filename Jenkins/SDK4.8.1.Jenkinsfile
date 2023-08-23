node {
    try {
        stage("Build") {
            powershell "docker build -t SDK4.8.1:1 -f Docker/SDK4.8.1.Dockerfile"
        }
    }
    finally {
        cleanWs()
    }
}