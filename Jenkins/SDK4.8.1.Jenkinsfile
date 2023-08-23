node {
    try {
        stage("Build") {
            powershell "docker build -t SDK4.8.1:1"
        }
    }
    finally {
        cleanWs()
    }
}