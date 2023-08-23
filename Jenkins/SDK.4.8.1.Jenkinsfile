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
            println powershell(script: """docker build --tag sdk.4.8.1:${params.Tag} --file ./Docker/SDK.4.8.1.Dockerfile .""", returnStdout: true)
        }
        stage("Prune") {
            println powershell(script: """docker images prune""", returnStdout: true)
        }
    }
    finally {
        cleanWs()
    }
}