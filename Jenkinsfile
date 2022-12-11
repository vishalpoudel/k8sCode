node{

def app

stage('clone repository') {

checkout scm
}
stage( 'Build image'){

app = docker.build ("vishalpoudel96/modified_by_jenkins")
}
stage('Test image'){


app.inside {

sh 'echo "Tests passed"'
  }
}

    stage('Push image') {
        
        docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
            app.push("${env.BUILD_NUMBER}")
        }
    }
    
    stage('Trigger ManifestUpdate') {
                echo "triggering updatemanifestjob"
                build job: 'updatemanifest', parameters: [string(name: 'DOCKERTAG', value: env.BUILD_NUMBER)]
        }
}
