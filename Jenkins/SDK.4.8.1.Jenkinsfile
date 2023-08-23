node {
    try {
        stage("Clone") {
            checkout scm
        }
        stage("Build") {
            powershell """docker build -t sdk.4.8.1:${env.BUILD_NUMBER} -f './Docker/SDK.4.8.1.Dockerfile' ."""
        }
    }
    finally {
        
    }
}