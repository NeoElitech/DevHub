properties([
    parameters([
        string(name: "Tag", defaultValue: "latest")
    ])
])

node {
    try {
        stage("Clone") {
            checkout scm
        }
        stage("Build") {
            powershell "docker build --no-cache --tag sdk.4.8.1:${params.Tag} --file ./Docker/SDK.4.8.1.Dockerfile ."
        }
        stage("Clean") {
            powershell 'docker rmi $(docker images --filter "dangling=true" --quiet)'
        }
    }
    finally {
        cleanWs()
    }
}