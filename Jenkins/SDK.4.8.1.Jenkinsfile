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
            powershell script: "Start-Sleep -Seconds 5"
        }
        stage("Prune") {
            powershell script: "docker images prune"
        }
    }
    finally {
        cleanWs()
    }
}