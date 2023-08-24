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
            powershell script: "docker build --tag sdk.4.8.1:${params.Tag} --file ./Docker/SDK.4.8.1.Dockerfile ."
        }
        stage("Clean") {
            powershell script: "docker rmi $(docker images -f 'dangling=true' -q)"
        }
    }
    finally {
        cleanWs()
    }
}