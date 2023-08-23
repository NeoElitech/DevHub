node {
    try {
        stage("Build") {
            powershell "docker build -t SDK.4.8.1:1 -f Docker/SDK.4.8.1.Dockerfile"
        }
    }
    finally {
        cleanWs()
    }
}